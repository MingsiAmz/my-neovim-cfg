return {
  "DrKJeff16/project.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  opts = {
    manual_mode = false,
    detection_methods = { "pattern", "lsp" },
    patterns = { ".git", "package.json", "pom.xml", "Makefile" },
    silent_chdir = true,
  },
  -- 除了 setup 还要注册 telescope 扩展，所以保留 config
  config = function(_, opts)
    require("project").setup(opts)
    require("telescope").load_extension("projects")
  end,
}
