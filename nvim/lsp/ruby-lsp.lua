return {
	cmd = { "ruby-lsp" },
	filetypes = { "ruby", "eruby" },
	root_markers = { "Gemfile", ".git" },
	init_options = {
		formatter = "rubocop",
		linters = { "rubocop" },
		enabledFeatures = {
			"formatting",
			"completion",
			"signatureHelp",
			"documentLink",
			"diagnostics",
			"definition",
		},
		addonSettings = {
			["Ruby LSP Rails"] = {
				enablePendingMigrationsPrompt = false,
			},
		},
	},
}
