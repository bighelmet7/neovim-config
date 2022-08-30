local helper = require("bighelmet7.helper")
local dap = require("dap")
-- logs are in vim.fn.stdpath('cache') .. "/dap.log"
dap.set_log_level("DEBUG")

local cwd = vim.fn.getcwd()
local poetry_bin = cwd .. "/../.env/bin/poetry"
local homebrew_bin = "/opt/homebrew/bin"

-- Python
dap.adapters.python = {
    type = "executable",
    command = poetry_bin,
    args = {"run", "python", "-m", "debugpy.adapter"},
    options = {cwd = cwd}
}
dap.configurations.python = {
    {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            local env_cmd = table.concat({poetry_bin, "env", "info", "-p"}, " ")
            local env_path = helper.execute_cmd(env_cmd, true)
            local python_env = env_path .. "/bin/python"
            if vim.fn.executable(python_env) == 1 then
                return python_env
            else
                return homebrew_bin .. "/python3"
            end
        end
    }
}
