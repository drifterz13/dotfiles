return {
	"L3MON4D3/LuaSnip",
	lazy = false,
	priority = 1000,
	build = "make install_jsregexp",
	dependencies = {
		{
			"rafamadriz/friendly-snippets",
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load({
					include = { "eruby", "ruby", "rails", "eelixir", "heex" },
				})
				require("luasnip").filetype_extend("ruby", { "rails" })
				require("luasnip").filetype_extend("elixir", { "eelixir" })
			end,
		},
	},
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node

		-- JSDoc @param snippet: type 'jsp' + tab
		ls.add_snippets("javascript", {
			s("jsp", {
				t({ "/**", " * @param {" }),
				i(1, "type"),
				t("} "),
				i(2, "name"),
				t({ "", " */" }),
			}),
			s("jst", {
				t({ "/** @type {" }),
				i(1, "type"),
				t({ "} */" }),
			}),
		})

		-- Same snippets for TypeScript
		ls.add_snippets("typescript", {
			s("jsp", {
				t({ "/**", " * @param {" }),
				i(1, "type"),
				t("} "),
				i(2, "name"),
				t({ "", " */" }),
			}),
			s("jst", {
				t({ "/** @type {" }),
				i(1, "type"),
				t({ "} */" }),
			}),
		})
	end,
	opts = {
		history = true,
		delete_check_events = "TextChanged",
	},
}
