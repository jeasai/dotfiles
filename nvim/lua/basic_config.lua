--[[   Basics   ]]--

vim.opt.number = true     -- line number
vim.opt.expandtab = true  -- spaces instead of tabs
vim.opt.tabstop = 4       -- tab width to 4 cols
vim.opt.shiftwidth = 4    -- width for autoindents
vim.opt.autoindent = true -- auto indent new lines

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.showmatch = true  -- Show matching brackets

vim.opt.mouse = 'a'

vim.cmd([[let &fcs='eob: ']])  -- Disable ~ on all empty lines
vim.cmd([[set termguicolors]]) -- For the top line

vim.g.completeopt=menu,menuone,noselect

vim.opt.showmode = false

vim.opt.laststatus = 0

vim.opt.fillchars = vim.opt.fillchars + 'diff: '

vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]])
