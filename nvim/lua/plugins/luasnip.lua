return {
	"L3MON4D3/LuaSnip",
	lazy = false,
	priority = 1000,
	build = "make install_jsregexp",
	dependencies = {
		{
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load({ include = { "eruby", "ruby", "rails" } })
				require("luasnip").filetype_extend("ruby", { "rails" })
			end,
		},
	},
	opts = {
		history = true,
		delete_check_events = "TextChanged",
	},
}
