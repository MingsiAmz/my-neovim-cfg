local ok1, project = pcall(require, "project_nvim")
if not ok1 then return end

project.setup({
  detection_methods = { "pattern", "lsp" },
  patterns = { ".git", "package.json", "pom.xml" },
})

local ok2, telescope = pcall(require, "telescope")
if ok2 then
  telescope.load_extension("projects")
end

