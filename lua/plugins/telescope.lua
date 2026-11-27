return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      prompt_prefix = "  ",
      sorting_strategy = "ascending",
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        files = false,
        depth = 1,   
        hidden = true,
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("file_browser")
  end,
}
