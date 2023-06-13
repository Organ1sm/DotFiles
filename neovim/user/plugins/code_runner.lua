return {
  {
    "CRAG666/code_runner.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = {
      -- choose default mode (valid term, tab, float, toggle, buf)
      mode = "term",
      focus = true,
      -- startinsert (see ':h inserting-ex')
      startinsert = false,
      term = {
        --  Position to open the terminal, this option is ignored if mode is tab
        position = "bot",
        size = 8,
      },

      float = {
        close_key = "q",
        border = "none",

        -- Num from `0 - 1` for measurements
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,

        -- Highlight group for floating window/border (see ':h winhl')
        border_hl = "FloatBorder",
        float_hl = "Normal",

        -- Transparency (see ':h winblend')
        blend = 0,
      },
      filetype = {
        c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        cpp = "cd $dir && clang++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
        python = "python3 -u",
        sh = "bash",
        rust = "cd $dir && rustc $fileName && $dir$fileNameWithoutExt",
      },
      project_path = "", -- No default path defined
      project = {},
    },
    ft = { "lua", "python", "c", "cpp", "go", "sh" },
  },
}
