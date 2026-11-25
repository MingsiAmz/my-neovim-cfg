return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "java", "javascript", "typescript", "json", "yaml", "bash" },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
