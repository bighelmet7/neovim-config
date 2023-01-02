-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- lsp
    --
    use({
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },

            -- Snippets
            { "L3MON4D3/LuaSnip" },
            { "rafamadriz/friendly-snippets" },
        },
    })

    -- dap
    --
    use("mfussenegger/nvim-dap")
    use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
    use({ "leoluz/nvim-dap-go", requires = { "mfussenegger/nvim-dap" } })
    use({ "mfussenegger/nvim-dap-python", requires = { "mfussenegger/nvim-dap" } })

    -- formatter
    --
    use("mhartington/formatter.nvim")

    -- theme
    --
    use({
        "rose-pine/neovim",
        as = "rose-pine",
    })

    -- nvim-tree
    --
    use({
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", -- optional, for file icons
        },
        tag = "nightly", -- optional, updated every week. (see issue #1193)
    })

    -- telescope
    --
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.0",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    -- ripgrep
    --
    use("BurntSushi/ripgrep")

    -- lazygit
    --
    use("kdheepak/lazygit.nvim")
    use("f-person/git-blame.nvim")

    -- treesitter
    -- treesitter vs LSP: https://github.com/nvim-treesitter/nvim-treesitter/issues/484#issuecomment-694388223
    --
    use({
        -- it will fail the first time
        -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })

    -- statusline
    --
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })

    -- bufferline (mainly for tabs and groups)
    --
    use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" })

    -- sqls
    --
    use("nanotee/sqls.nvim")

    -- tmux
    --
    use({
        "aserowy/tmux.nvim",
        config = function()
            require("tmux").setup()
        end,
    })
end)
