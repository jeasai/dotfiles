Basic navigation
----------------

| Shortcut  | Explaination         |
| --------- | -------------------- |
| <up>      | next tab              |
| <down>    | prev tab              |
| H/J/K/L   | move between windows  |
| T         | open buf in tab       |
| U         | Back to prev file     |
 
Advanced navigation
-------------------

Plugins used:
* [nvimtree](https://github.com/nvim-tree/nvim-tree.lua)
* [telescope](https://github.com/nvim-telescope/telescope.nvim)
* [aerial](https://github.com/stevearc/aerial.nvim)

| Shortcut  | Explaination          |
| --------- | --------------------- |
| <tab>     | nvimtree              |
| <s-tab>   | Aerial                |
| <C-f>     | Telescope find file   |
| <C-g>     | Telescope grep        |
| <C-d>     | Telescope references  |
| <C-t>     | Toggle term           |
| <C-l>     | Lazy (plugin manager) |

Language server protocol
------------------------

Plugins used:
* [lspzero](https://github.com/VonHeikemen/lsp-zero.nvim)
* [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

| Shortcut  | Explaination          |
| --------  | -------------------   |
| <C-h>     | hover                 |
| <C-n>     | rename                |
| <C-a>     | code action           |
| <C-l>     | lsp references        |
| <C-e>     | lsp diagnostic        |
| gd        | lsp definition        |
| gD        | lsp declaration       |
| gi        | lsp implementation    |
| go        | lsp type definition   |
| gs        | lsp signature         |

Git integration
---------------

Plugin used:
* [gitsigns](https://github.com/lewis6991/gitsigns.nvim)
* [diffview](https://github.com/sindrets/diffview.nvim)

| Shortcut  | Explaination          |
| --------  | --------------------- |
| <C-d>b    | git blame             |
| <C-d>n    | next modified block   |
| <C-d>p    | prev modified block   |
| <C-d>o    | open  diffview        |
| <C-d>c    | close diffview        |
| <C-d>h    | history mode          |

Inside of diffview:

| Shortcut  | Explaination          |
| --------- | --------------------- |
| N         | next conflict         |
| P         | prev conflict         |
| s         | stage / unstage       |
| S         | stage all             |
| U         | unstage all           |
| R         | refresh               |
| <space>t  | conflict chose theirs |
| <space>o  | conflict chose ours   |
| <space>b  | conflict chose base   |
| <space>a  | conflict chose all    |
| <space>n  | conflict chose none   |
| <space>*f | conflict * for file   |
| <space>r  | refresh               |
| g?        | help                  |

