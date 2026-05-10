return {
	cmd = { "gopls" },
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
	root_markers = {
		"go.work",
		"go.mod",
		".git",
	},
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				fillreturns = true,
				nonewvars = true,
				noresultvalues = true,
				undeclaredname = true,
			},
			staticcheck = true,
		},
	},
}
