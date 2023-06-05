return {
  capabilities = {
    offsetEncoding = "utf-16",
    memoryUsageProvider = true,
  },
  filetypes = { "c", "cpp", "cuda", "objc", "objcpp", "opencl" },
  init_options = {
    clangdFileStatus = true, -- Provides information about activity on clangd’s per-file worker thread
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  cmd = {
    "clangd",
    -- SEE: clangd --help-hidden for possible options
    -- by default, clang-tidy use -checks=clang-diagnostic-*,clang-analyzer-*
    -- to add more `checks`, create  a `.clang-tidy` file in the root directory
    -- SEE: https://clang.llvm.org/extra/clang-tidy
    "--all-scopes-completion",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--cross-file-rename",
    "--log=verbose",
    "--pretty",
    "--compile-commands-dir=build",
    "-j=12",
    "--query-driver=D:\\ToolChains\\LLVM-mingw\\bin\\g++",
    "--all-scopes-completion",
  },
}
