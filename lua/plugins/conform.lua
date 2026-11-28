return {
	"stevearc/conform.nvim",
	cmd = { "ConformInfo" },
	keys = {
		{
			"<C-i>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = { "n", "v" },
			desc = "Format buffer",
		},
	},
	opts = {
		-- 只使用外部格式化器，不使用 LSP 格式化
		default_format_opts = {
			lsp_format = "never",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			vue = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			html = { "prettier" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "never",
		},
	},
}
