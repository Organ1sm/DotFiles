return function()
  vim.filetype.add {
    filename = {
      ["%.?zshrc"] = "sh",
    },
    extension = {},
    pattern = {
      -- ["~/%.config/foo/.*"] = "fooscript",
      ["%.gitconfig.*"] = "gitconfig",
    },
  }

  local function leave_snippet()
    if
      ((vim.v.event.old_mode == "s" and vim.v.event.new_mode == "n") or vim.v.event.old_mode == "i")
      and require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
      and not require("luasnip").session.jump_active
    then
      require("luasnip").unlink_current()
    end
  end

  -- stop snippets when you leave to normal mode
  vim.api.nvim_create_augroup("ModeChangedGroup", { clear = true })
  vim.api.nvim_create_autocmd("ModeChanged", {
    pattern = "*",
    group = "ModeChangedGroup",
    callback = function() leave_snippet() end,
  })

  -- fix treesitter slow on very big files
  local cmp = require "cmp"
  local default_cmp_sources = cmp.config.sources {
    { name = "nvim_lsp", keyword_length = 2 },
    { name = "luasnip", keyword_length = 2 },
    { name = "buffer", keyword_length = 2 },
    { name = "path", keyword_length = 2 },
    { name = "nvim_lua", keyword_length = 2 },
  }

  local bufIsBig = function(bufnr)
    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(bufnr))
    if ok and stats and stats.size > max_filesize then
      return true
    else
      return false
    end
  end

  vim.api.nvim_create_autocmd("BufReadPre", {
    callback = function(t)
      local sources = default_cmp_sources
      if not bufIsBig(t.buf) then sources[#sources + 1] = { name = "treesitter", group_index = 2 } end
      cmp.setup.buffer {
        sources = sources,
      }
    end,
  })

  -- don't auto commenting new lines
  vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "",
    command = "set fo-=c fo-=r fo-=o",
  })
end
