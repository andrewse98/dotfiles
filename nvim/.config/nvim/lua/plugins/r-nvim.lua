return {
  "R-nvim/R.nvim",
  opts = {
    hook = {
      on_filetype = function()
        vim.api.nvim_buf_set_keymap(0, "i", "<C-M-,>", "<Plug>RInsertAssign", { noremap = true })
        vim.api.nvim_buf_set_keymap(0, "i", "<C-M-.>", "<Plug>RInsertPipe", { noremap = true })
        vim.keymap.set("n", "<Enter>", "<Plug>RDSendLine", { buffer = true })
        vim.keymap.set("x", "<Enter>", "<Plug>RSendSelection", { buffer = true })

        local wk = require("which-key")
        wk.add({
          buffer = true,
          mode = { "n", "x" },
          { "<localleader>a", group = "all" },
          { "<localleader>b", group = "between marks" },
          { "<localleader>c", group = "chunks" },
          { "<localleader>f", group = "functions" },
          { "<localleader>g", group = "goto" },
          { "<localleader>i", group = "install" },
          { "<localleader>k", group = "knit" },
          { "<localleader>p", group = "paragraph" },
          { "<localleader>q", group = "quarto" },
          { "<localleader>r", group = "r general" },
          { "<localleader>s", group = "split or send" },
          { "<localleader>t", group = "terminal" },
          { "<localleader>v", group = "view" },
        })
      end,
    },
    pdfviewer = "",
  },
}
