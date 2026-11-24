local opt = vim.opt
-- line number
opt.relativenumber = true
opt.number = true
-- tab size
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
opt.cursorline = true

-- system mouse and pause
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")

-- search
opt.ignorecase = true
opt.smartcase = true

-- theme
opt.termguicolors = true
opt.signcolumn = "yes"

