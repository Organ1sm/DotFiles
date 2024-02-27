local M = {}
local Job = require "plenary.job"
local scan = require "plenary.scandir"
local OsName = vim.loop.os_uname().sysname

function M:loadVariables()
  self.isWindows = OsName == "Windows_NT"
  self.isLinux = OsName == "Linux"
  self.isMac = OsName == "Darwin"
  self.isWSL = vim.fn.has "wsl" == 1
  self.pathSep = self.isWindows and "\\" or "/"
  self.vimpath = vim.fn.stdpath "config"

  local home = self.isWindows and os.getenv "USERPROFILE" or os.getenv "HOME"
  self.cache_dir = home .. self.pathSep .. ".cache" .. self.pathSep .. "nvim" .. self.pathSep
  self.modules_dir = self.vimpath .. self.pathSep .. "modules"
  self.home = home
  self.data_dir = string.format("%s/site/", vim.fn.stdpath "data")
end

M:loadVariables()

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

local contains = function(tbl, str)
  for _, v in ipairs(tbl) do
    if v == str then return true end
  end
  return false
end

--- Check if a path
M.exists = function(dir, file_pattern)
  local dirs = scan.scan_dir(dir, { depth = 1, search_pattern = file_pattern })
  return contains(dirs, dir .. "/" .. file_pattern)
end

M.getClangdQueryDriver = function(binaries)
  if M.isWindows then return "D:\\ToolChains\\LLVM-mingw\\bin\\g++" end

  local path_list = {}
  for _, binary in ipairs(binaries) do
    local path = M.getBinaryPath(binary)
    if path then table.insert(path_list, path) end
  end

  return table.concat(path_list, ",")
end

return M
