return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", stop_after_first = true },
				typescript = { "prettierd", stop_after_first = true },
				typescriptreact = { "prettierd", stop_after_first = true },
				css = { "prettierd", stop_after_first = true },
				scss = { "prettierd", stop_after_first = true },
				eruby = { "erb_format" },
				ruby = { "rubocop" },
			},
		},
	},
}
