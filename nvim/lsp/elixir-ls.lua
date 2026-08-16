return {
	cmd = { "elixir-ls" },
	filetypes = { "elixir", "eelixir", "heex" },
	root_markers = { "mix.exs", ".git" },
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	settings = {
		elixirLS = {
			dialyzerEnabled = false,
			fetchDeps = true,
		},
	},
}
