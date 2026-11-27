return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    view = {
      width = 30,
      side = "left",
    },
    git = {
      enable = true,
      ignore = false,
    },
    update_cwd = true,
    respect_buf_cwd = true,
  },
  keys = {
    { "<leader>ff", "<cmd>NvimTreeOpen<cr>", silent = true}
  }
}
