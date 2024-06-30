local utils = require "user.utils"

local status, cmake = pcall(require, "cmake-tools")
cmake.get_build_directory()

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

            -- "--compile-commands-dir=" .. cmake.get_build_directory(),
            "-j=12",
            "--query-driver=" .. utils.getClangdQueryDriver { "clang++", "clang", "g++", "gcc" },
          },
        },
      },
    },
  },
}
