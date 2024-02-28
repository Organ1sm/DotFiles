return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-cmdline", -- add cmp-cmdline as dependency of cmp
    },
    opts = function(_, opts)
      local lspkind_status_ok, lspkind = pcall(require, "lspkind")
      local cmp = require "cmp"

      -- modify the sources part of the options table
      opts.sources = cmp.config.sources {
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
      }

      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })

      return require("astrocore").extend_tbl(opts, {
        formatting = {
          fields = { "abbr", "menu", "kind" },
          format = lspkind_status_ok and lspkind.cmp_format {
            maxwidth = 50,
            ellipsis_char = "...",
          } or nil,
        },
        window = {
          completion = {
            scrollbar = true,
          },
        },
      })
    end,
  },
}
