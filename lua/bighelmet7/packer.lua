-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
    function(use)
        -- Packer can manage itself
        use "wbthomason/packer.nvim"

        -- lsp
        -- NOTE: nvim-lspconfig doesn't configure keymap by default:
        -- https://github.com/neovim/nvim-lspconfig#suggested-configuration
        use "neovim/nvim-lspconfig"
        use "hrsh7th/nvim-cmp"
        use "hrsh7th/cmp-nvim-lsp"
        use "hrsh7th/cmp-buffer"
        use "hrsh7th/cmp-path"
        use "hrsh7th/cmp-cmdline"
        use "L3MON4D3/LuaSnip" -- Snippets plugin
        use "saadparwaiz1/cmp_luasnip" -- Snippets source for nvim-cmp

        -- theme
        use "folke/tokyonight.nvim"

        -- nvim-tree
        use {
            "kyazdani42/nvim-tree.lua",
            requires = {
                "kyazdani42/nvim-web-devicons" -- optional, for file icons
            },
            tag = "nightly" -- optional, updated every week. (see issue #1193)
        }

        -- telescope
        use {
            "nvim-telescope/telescope.nvim",
            tag = "0.1.0",
            requires = {{"nvim-lua/plenary.nvim"}}
        }

        -- ripgrep
        use "BurntSushi/ripgrep"

        -- lazygit
        use "kdheepak/lazygit.nvim"
        use "f-person/git-blame.nvim"

        -- treesitter
        -- treesitter vs LSP: https://github.com/nvim-treesitter/nvim-treesitter/issues/484#issuecomment-694388223
        use {
            -- it will fail the first time
            -- https://github.com/nvim-treesitter/nvim-treesitter/wiki/Installation#packernvim
            "nvim-treesitter/nvim-treesitter",
            run = ":TSUpdate"
        }

        -- statusline
        use {
            "nvim-lualine/lualine.nvim",
            requires = {"kyazdani42/nvim-web-devicons", opt = true}
        }

        -- formatting
        use "sbdchd/neoformat"

        -- bufferline (mainly for tabs and groups)
        use {"akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons"}

        -- sqls
        use "nanotee/sqls.nvim"

        -- dap
        use "mfussenegger/nvim-dap"
        use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
        use {"mfussenegger/nvim-dap-python", requires = {"mfussenegger/nvim-dap"}}
        use {"leoluz/nvim-dap-go", requires = {"mfussenegger/nvim-dap"}}
    end
)
