local ok, telescope = pcall(require, "telescope")
if not ok then return end

telescope.setup({
  defaults = {
    prompt_prefix = "  ",
    sorting_strategy = "ascending",
  },
})

