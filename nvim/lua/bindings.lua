function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

map("n", "<up>", ":tabn<cr>")
map("n", "<down>", ":tabp<cr>")
map("n", "H", "<C-w>h")
map("n", "J", "<C-w>j")
map("n", "K", "<C-w>k")
map("n", "L", "<C-w>l")
map("n", "T", ":tabedit %<cr>") -- Open current buf a new tab
map("n", "U", ":e#<cr>")

map("n", "<Tab>", "<cmd>NvimTreeToggle<cr>")

map("n", "<C-d>b", "<cmd>Gitsigns toggle_current_line_blame<CR>")
map("n", "<C-d>n", "<cmd>Gitsigns next_hunk<CR>")
map("n", "<C-d>p", "<cmd>Gitsigns prev_hunk<CR>")
map("n", "<C-d>h", "<cmd>DiffviewFileHistory<CR>")
map("n", "<C-d>o", "<cmd>DiffviewOpen<CR>")
map("n", "<C-d>c", "<cmd>DiffviewClose<CR>")

map("n", "<C-f>", "<cmd>Telescope find_files<CR>")
map("n", "<C-g>", "<cmd>Telescope live_grep<CR>")

map("n", "<s-tab>", "<cmd>AerialToggle<CR>")

map("n", "<C-l>", "<cmd>Lazy<CR>")

map("n", "<C-t>", "<cmd>ToggleTerm<CR>")
