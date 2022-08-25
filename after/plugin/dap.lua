local dap = require("dap")
local homebrew_bin = "/opt/homebrew/bin"

-- Python
dap.adapters.python = {
    type = "executable",
    command = "python3",
    args = {"-m", "debugpy.adapter"}
}
dap.configurations.python = {
    {
        type = "python",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. "/.env/bin/python") == 1 then
                return cwd .. "/.env/bin/python"
            elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
                return cwd .. "/.venv/bin/python"
            else
                return homebrew_bin .. "/python3"
            end
        end
    }
}
