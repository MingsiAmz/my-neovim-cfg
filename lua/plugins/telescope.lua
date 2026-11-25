return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      prompt_prefix = "  ",
      sorting_strategy = "ascending",
    },
  },
}
