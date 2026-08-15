return {
	cmd = { "gleam", "lsp" },
	filetypes = { "gleam" },
	root_markers = { "gleam.toml" },
	workspace_required = true,
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
}
