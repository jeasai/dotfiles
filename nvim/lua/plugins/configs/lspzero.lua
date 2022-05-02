local lsp = require('lsp-zero').preset({})

--[[        Keybindings               ]]--
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
    vim.keymap.set('n', '<C-h>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', '<C-n>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set('n', '<C-a>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', '<C-l>', '<cmd>Telescope lsp_references<cr>', {buffer = true})
    vim.keymap.set('n', '<C-e>', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)

    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
end)

--[[        Language servers          ]]--
lsp.ensure_installed({
    "lua_ls",
    "pyright",
    "clangd",
    "rust_analyzer",
    "bashls",
})


--[[        Misc                      ]]--
lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

vim.diagnostic.config({
    virtual_text = false -- do not show diagnostic in window
})

lsp.setup()

local cmp = require'cmp'

require("cmp").setup({
    window = {
      -- completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = {
      ['<Up>'] = cmp.mapping.select_prev_item(select_opts),
      ['<Down>'] = cmp.mapping.select_next_item(select_opts),
      ['<Right>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({select = true}),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'buffer' },
    }, {
    })
})
