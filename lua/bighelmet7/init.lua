require("bighelmet7.set")

-- Plugins
--
-- nvim-tree.lua and nvim-web-devicons
require("nvim-web-devicons").setup({default = true})
require("nvim-tree").setup(
    {
        git = {ignore = false},
        view = {side = "left"},
        renderer = {
            icons = {
                glyphs = {
                    git = {
                        untracked = "🤷",
                        unstaged = "👀"
                    }
                }
            }
        }
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

-- bufferline
--
require("bufferline").setup(
    {
        options = {
            offsets = {
                {filetype = "NvimTree", text = "File Explorer", padding = 1}
            },
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 20,
            separator_style = "thin"
        }
    }
)

-- shade
require("shade").setup(
    {
        overlay_opacity = 50,
        opacity_step = 1,
        keys = {
            brightness_up = "<C-Up>",
            brightness_down = "<C-Down>",
            toggle = "<leader>sh"
        }
    }
)
