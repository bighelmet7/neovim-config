local helper = require("bighelmet7.helper")
local dap = require("dap")

-- logs are in vim.fn.stdpath('cache') .. "/dap.log"
dap.set_log_level("DEBUG")

local cwd = vim.fn.getcwd()
local poetry_bin = cwd .. "/../.env/bin/poetry"
local env_path = helper.execute_cmd(table.concat({poetry_bin, "env", "info", "-p"}, " "), true)
local python_env = env_path .. "/bin/python"

-- Python
local dap_python = require("dap-python")
dap_python.test_runner = "pytest"
dap_python.setup(python_env)

-- Go
local dap_golang = require("dap-go")
dap_golang.setup()

-- Dap UI
-- More: https://github.com/rcarriga/nvim-dap-ui
require("dapui").setup(
    {
        icons = {expanded = "▾", collapsed = "▸"},
        mappings = {
            -- Use a table to apply multiple mappings
            expand = {"<CR>", "<2-LeftMouse>"},
            open = "o",
            remove = "d",
            edit = "e",
            repl = "r",
            toggle = "t"
        },
        -- Requires >= 0.7
        expand_lines = vim.fn.has("nvim-0.7"),
        -- Layouts define sections of the screen to place windows.
        -- The position can be "left", "right", "top" or "bottom".
        -- The size specifies the height/width depending on position. It can be an Int
        -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
        -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
        -- Elements are the elements shown in the layout (in order).
        -- Layouts are opened in order so that earlier layouts take priority in window sizing.
        layouts = {
            {
                elements = {
                    -- Elements can be strings or table with id and size keys.
                    "breakpoints",
                    "stacks"
                },
                size = 40, -- 40 columns
                position = "left"
            },
            {
                elements = {
                    "scopes"
                },
                size = 0.25, -- 25% of total lines
                position = "bottom"
            }
        },
        floating = {
            max_height = nil, -- These can be integers or a float between 0 and 1.
            max_width = nil, -- Floats will be treated as percentage of your screen.
            border = "single", -- Border style. Can be "single", "double" or "rounded"
            mappings = {
                close = {"q", "<Esc>"}
            }
        },
        windows = {indent = 1},
        render = {
            max_type_length = nil -- Can be integer or nil.
        }
    }
)
