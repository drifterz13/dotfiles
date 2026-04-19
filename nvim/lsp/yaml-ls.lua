return {
	cmd = { "yaml-language-server", "--stdio" },
	filetypes = { "yaml" },
	root_markers = {},
	settings = {
		yaml = {
			validate = true,
			hover = true,
			completion = true,
			customTags = {
				"tag",
				"x-",
			},
			schemaStore = {
				enable = true,
			},
		},
	},
}
