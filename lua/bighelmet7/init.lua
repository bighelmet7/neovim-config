require("bighelmet7.set")
-- dap
require("bighelmet7.dap")

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- Plugins
--
-- nvim-tree.lua and nvim-web-devicons
require("nvim-web-devicons").setup({ default = true })
require("nvim-tree").setup(
    {
        git = { ignore = false },
        view = { side = "left" },
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
            theme = "rose-pine"
        }
    }
)

-- bufferline
--
require("bufferline").setup(
    {
        options = {
            offsets = {
                { filetype = "NvimTree", text = "File Explorer", padding = 1 }
            },
            max_name_length = 14,
            max_prefix_length = 13,
            tab_size = 20,
            separator_style = "thin"
        }
    }
)


