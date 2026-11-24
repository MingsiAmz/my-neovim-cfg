return {
  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function() require("plugins.configs.nvim-treesitter") end,
  },

  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require("plugins.configs.telescope") end,
  },

  -- project（之前 packer 死活报错的，lazy 下直接好）
  {
    "DrKJeff16/project.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function() require("plugins.configs.project") end,
  },

  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function() require("plugins.configs.nvim-tree") end,
  },

  -- visual-multi
  {
    "mg979/vim-visual-multi",
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
        ["Add Cursor Down"] = "<C-Down>",
        ["Add Cursor Up"] = "<C-Up>",
      }
    end,
  },

  -- blink.cmp（lazy 下自动处理预编译，不用操心）
  {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function() require("plugins.configs.blink") end,
  },
}
