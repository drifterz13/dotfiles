return {
	cmd = { "vtsls", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
	root_markers = {
		"tsconfig.json",
	},
	settings = {
		vtsls = {
			autoUseWorkspaceTsdk = true,
		},
	},
}
