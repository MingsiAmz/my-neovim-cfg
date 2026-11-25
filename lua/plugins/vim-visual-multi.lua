return{
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>",
      ["Find Subword Under"] = "<C-d>",
      ["Add Cursor Down"] = "<C-j>",
      ["Add Cursor Up"] = "<C-k>",
      ["Select All"] = "<C-a>",
    }
  end,
} 
