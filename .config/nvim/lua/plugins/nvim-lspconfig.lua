return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.diagnostics.virtual_text = false
    return opts
  end,
  opts = {
    servers = {
      r_language_server = { mason = false },
    },
  },
}
