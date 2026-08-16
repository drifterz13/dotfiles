return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = { "eruby", "ruby", "typescriptreact", "html", "eelixir", "heex", "elixir" },
	root_markers = { "package.json", "assets/package.json", "mix.exs", "Gemfile" },
	init_options = {
		userLanguages = {
			eruby = "html",
			ruby = "html",
			eelixir = "html-eex",
			heex = "html-eex",
			elixir = "html-eex",
		},
	},
	settings = {
		tailwindCSS = {
			includeLanguages = {
				eruby = "html",
				ruby = "html",
			},
			classAttributes = { "class", "className" },
			experimental = {
				classRegex = {
					"class:\\s*[\"']([^\"']*)[\"']", -- Ruby hash syntax: class: "..."
					"class:\\s*:([\\w-]+)", -- Ruby hash syntax with symbol: class: :class_name
					"class:\\s*%[([^]]*)]", -- Ruby hash syntax with array: class: ["class1", "class2"]
					"class:\\s*{([^}]*)}", -- Ruby hash syntax with interpolation: class: {"class-#{var}"}
				},
			},
		},
	},
}
