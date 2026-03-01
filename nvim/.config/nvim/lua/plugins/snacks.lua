return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      -- This makes the explorer show dotfiles by default
      hidden = true,
      -- This makes it show files ignored by git by default
      ignored = true,
    },
    -- Note: Since the explorer is actually a 'picker',
    -- you can also set it globally for all pickers here:
    picker = {
      sources = {
        files = { hidden = true },
        grep = { hidden = true },
        explorer = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
