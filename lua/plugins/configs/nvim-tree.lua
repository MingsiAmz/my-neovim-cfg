local ok, tree = pcall(require, "nvim-tree")
if not ok then return end

tree.setup({
  view = {
    width = 30,
    side = "left",
  },
  filters = {
    dotfiles = false, -- 显示 .git / .projectile / .vscode 等
    custom = { "^node_modules$", "^.git$" },
  },
  git = {
    enable = true,
    ignore = false,
  },
  update_cwd = true,
  respect_buf_cwd = true,
})
