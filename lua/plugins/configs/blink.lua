local ok, blink = pcall(require, "blink.cmp")
if not ok then
  vim.notify("blink.cmp not loaded: " .. tostring(blink), vim.log.levels.WARN)
  return
end

blink.setup({
  fuzzy = { implementation = "lua" },
  keymap = { 
      preset = "none",
      ['<cr>'] = {'accept', 'fallback'},
      ['<tab>'] = {'snippet_forward', 'fallback'},
      ['<S-tab>'] = {'snippet_backward', 'fallback'}
 },
  appearance = { nerd_font_variant = "mono" },
  sources = { default = { "lsp", "path", "buffer" } },
})

