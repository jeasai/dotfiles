local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
      return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- custom mappings
    vim.keymap.set('n', 'a',     api.fs.create,                         opts('Create'))
    vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))
    vim.keymap.set('n', 'm',     api.fs.rename_sub,                     opts('Rename'))
    vim.keymap.set('n', 'f',     api.tree.find_file,                    opts('find file'))
    vim.keymap.set('n', 'H',     api.tree.toggle_hidden_filter,         opts('Toggle Dotfiles'))
    vim.keymap.set('n', 's',     api.node.open.vertical,                opts('Open: Vertical Split'))
    vim.keymap.set('n', 'v',     api.node.open.horizontal,              opts('Open: Horizontal Split'))
    vim.keymap.set('n', 't',     api.node.open.tab,                     opts('Open: New Tab'))
    vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
end

local options = {
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
    icons = {
      modified_placement = "before",
      git_placement = "signcolumn",
      glyphs = {
        git = {
          unstaged = "M",
          staged = "A",
          unmerged = "",
          renamed = "R",
          untracked = "U",
          deleted = "D",
          ignored = "",
        },
      },
    },
  },
  filters = {
    dotfiles = true,
  },
  on_attach = my_on_attach,
}

return options
