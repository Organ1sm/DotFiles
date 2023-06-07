local utils = require "user.utils"

local function getClangdQueryDriver(binaries)
  if utils.isWindows then return "D:\\ToolChains\\LLVM-mingw\\bin\\g++" end

  local path_list = {}
  for _, binary in ipairs(binaries) do
    local path = utils.getBinaryPath(binary)
    if path then table.insert(path_list, path) end
  end

  return table.concat(path_list, ",")
end

return {
  capabilities = {
    offsetEncoding = "utf-16",
    memoryUsageProvider = true,
  },

  filetypes = { "c", "cpp", "cuda", "opencl" },
  init_options = {
    clangdFileStatus = true, -- Provides information about activity on clangd’s per-file worker thread
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },

  cmd = {
    "clangd",
    "--all-scopes-completion",
    "--background-index",
    "--completion-style=detailed",
    "--cross-file-rename",
    "--log=verbose",
    "--compile-commands-dir=build",
    "-j=12",
    "--query-driver=" .. getClangdQueryDriver { "clang++", "clang", "g++", "gcc" },
  },
}
