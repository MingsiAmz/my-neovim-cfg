local ok, project = pcall(require, "project")
if not ok then
  vim.notify("project.nvim not installed", vim.log.levels.WARN)
  return
end

project.setup({
  manual_mode = false,
  detection_methods = { "pattern", "lsp" },
  patterns = { ".git", "package.json", "pom.xml", "Makefile" },
  silent_chdir = true,
})

local ok_telescope, telescope = pcall(require, "telescope")
if ok_telescope then
  pcall(telescope.load_extension, "projects")
end

