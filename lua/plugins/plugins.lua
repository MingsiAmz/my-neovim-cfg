return {
  "wbthomason/packer.nvim",
  "nvim-lua/plenary.nvim",

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("plugins.configs.nvim-treesitter")
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.configs.telescope")
    end,
  },

  {
    "DrKJeff16/project.nvim",
    requires = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("plugins.configs.project")
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("plugins.configs.nvim-tree")
    end,
  },

  {
    "mg979/vim-visual-multi",
    config = function()
        require("plugins.configs.vim-visual-multi") 
    end,
  }
}

