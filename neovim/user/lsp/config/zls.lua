return {
  cmd = { "/usr/sbin/zls", "--enable-debug-log" },
  settings = {
    zls = {
      enable_inlay_hints = true,
      inlay_hints_show_builtin = true,
      inlay_hints_exclude_single_argument = true,
      inlay_hints_hide_redundant_param_names = true,
      inlay_hints_hide_redundant_param_names_last_token = true,
    },
  },
}
