require("bighelmet7.set")

-- Plugins
--
-- nvim-tree.lua and nvim-web-devicons
require("nvim-web-devicons").setup({default = true})
require("nvim-tree").setup(
    {
        git = {ignore = false},
        view = {side = "left"}
    }
)

-- Telescope
require("telescope.builtin")

-- Lualine
require("lualine").setup(
    {
        options = {
            theme = "tokyonight"
        }
    }
)
