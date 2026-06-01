return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },

      javascript = { "prettier" },
      html = { "prettier" },
      css = { "prettier" },

      json = { "prettier" },
      markdown = { "markdownlint-cli2", "prettier" },

      quarto = { "injected" },
      rmd = { "injected" },
      r = { "air" },
    },
  },
}
