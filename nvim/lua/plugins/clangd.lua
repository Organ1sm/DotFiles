local utils = require "user.utils"
return {
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      config = {
        clangd = {
          capabilities = {
            offsetEncoding = "utf-8",
            memoryUsageProvider = true,
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
            "--query-driver=" .. utils.getClangdQueryDriver { "clang++", "clang", "g++", "gcc" },
          },
        },
      },
    },
  },
}
