local plugins = {
    -- Devicons
    "nvim-tree/nvim-web-devicons",

    --[[             Appearance                        ]]--
    { -- Theme
        "Mofiqul/vscode.nvim",
        opts = require("plugins/configs/vscode_theme"),
        config = function(_, opts)
            require("vscode").setup(opts)
            require("vscode").load()
        end,
    },
    { -- Window line
        "utilyre/barbecue.nvim",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {},
        config = function(_, opts)
            require("barbecue").setup(opts)
        end,
    },
    { -- Show line indentations
        "lukas-reineke/indent-blankline.nvim",
        opts = require("plugins/configs/indent_blankline"),
        config = function(_, opts)
            require("indent_blankline").setup(opts)
        end
    },
    { -- Tabline
        'nanozuki/tabby.nvim',
        config = function(_, opts)
            cfg = require("plugins/configs/tabby")
            require('tabby.tabline').set(cfg)
        end
    },

    --[[                 Git                          ]]--
    { -- Show modified lines
        "lewis6991/gitsigns.nvim",
        config = function(_, opts)
            require("gitsigns").setup(opts)
        end,
        branch="release",
    },
    { -- Show a git diff
        "sindrets/diffview.nvim",
        config = function(_, opts)
            cfg = require("plugins/configs/diffview")
            require("diffview").setup(cfg)
        end,
        branch="main",
    },

    --[[                 Navigation                   ]]--
    { -- Folder architecture
        "nvim-tree/nvim-tree.lua",
        opts = require("plugins/configs/nvimtree"),
        config = function(_, opts)
            require("nvim-tree").setup(opts)
        end,
    },
    { -- Fuzzy finder
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function(_, opts)
            cfg = require("plugins/configs/telescope")
            require("telescope").setup(cfg)
        end,
    },
    { -- Code outline window
        'stevearc/aerial.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        opts = require("plugins/configs/aerial"),
        config = function(_, opts)
            require("aerial").setup(opts)
        end
    },
    { -- Toggleterm
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true,
    },

    --[[                 LSP config                   ]]--
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        },
        config = function(_, opts)
            require("plugins/configs/lspzero")
        end,
    },
    { -- Better syntax highlighting
        "nvim-treesitter/nvim-treesitter",
        opts = require("plugins/configs/treesitter"),
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}

require("lazy").setup(plugins)
