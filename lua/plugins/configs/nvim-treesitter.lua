local ok, configs = pcall(require, "nvim-treesitter.configs")
if not ok then return end

configs.setup({
  ensure_installed = { "lua", "vim", "vimdoc", "java", "javascript", "typescript", "json", "yaml", "bash" },
  highlight = { enable = true },
  indent = { enable = true },
})


