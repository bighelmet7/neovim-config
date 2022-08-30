local M = {}

--- Execute a command over a in a separated process
---@param cmd string|nil Command to execute over a separeted process
---@param output boolean|nil Flag that specifies if we want the function to return the command's result
function M.execute_cmd(cmd, output)
    assert(cmd ~= "" or cmd ~= nil, "Command can't be empty")
    if output == nil then
        output = false
    end
    local file_handle = assert(io.popen(cmd, "r"))
    local command_output = assert(file_handle:read("*a"))
    command_output = vim.trim(command_output, "\n")
    command_output = vim.trim(command_output, "\r")
    if output then
        return command_output
    end
end

return M
