return {
	{
		"scalameta/nvim-metals",
		ft = { "scala", "sbt", "java" },
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp",
		},
		opts = function()
			local metals_config = require("metals").bare_config()

			-- Advertise nvim-cmp's completion and snippet capabilities to Metals.
			metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

			metals_config.on_attach = function(_, bufnr)
				vim.keymap.set("n", "<leader>ws", function()
					require("metals").hover_worksheet()
				end, { buffer = bufnr, silent = true, desc = "Metals worksheet hover" })
			end

			return metals_config
		end,
		config = function(self, metals_config)
			local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })

			vim.api.nvim_create_autocmd("FileType", {
				pattern = self.ft,
				callback = function()
					require("metals").initialize_or_attach(metals_config)
				end,
				group = nvim_metals_group,
			})
		end,
	},
}
