return {
  "saghen/blink.cmp",
  version = "*",
  dependencies = {
        "rafamadriz/friendly-snippets", 
    },
  event = "VeryLazy",
  opts = {
    fuzzy = {
        implementation = "prefer_rust",
        prebuilt_binaries = {
            -- Windows 下 curl 检查证书吊销失败时会导致预编译库下载失败
            extra_curl_args = vim.fn.has("win32") == 1 and { "--ssl-no-revoke" } or {},
        },
    },
    completion = {
        menu = {
            auto_show = true
        },
        list = {
            max_items = 100
        }
    },
    keymap = {
            preset = "super-tab",
    },
    sources = {
        default = {"path", "snippets", "buffer", "lsp"}
    },
    cmdline = {
        sources = function ()
            local cmd_type = vim.fn.getcmdtype()
            if cmd_type == "/" then
                return {"buffer"}
            end
            if cmd_type == ":" then
                return {"cmdline"}
            end
        end,
        keymap = {
            preset = "super-tab",
        },
        completion = {
            menu = {
                auto_show = true
            }
        },
    },
    appearance = { nerd_font_variant = "mono" },
  },
}
