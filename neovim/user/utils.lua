local M = {}
local Job = require "plenary.job"

M.isWindows = vim.fn.has "win32" == 1 or vim.fn.has "win64" == 1

function M.getBinaryPath(bin)
  local j = Job:new { command = "which", args = { bin } }
  local _, result = pcall(function()
    local out = j:sync()
    if #out > 0 then return vim.trim(out[1]) end
    return nil
  end)
  return result
end

function M.getShell()
  if M.isWindows then
    return "pwsh"
  else
    return vim.o.shell
  end
end

return M
