local M = {}

function M.getShell()
  local isWindows = vim.fn.has "win32" == 1
  if isWindows then
    return "pwsh"
  else
    return vim.o.shell
  end
end

return M
