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
    "--query-driver=D:\\ToolChains\\LLVM-mingw\\bin\\g++",
  },
}
