require("config")

-- Register a command to switch to terminal background.
local colors = require("config.colors")
vim.api.nvim_create_user_command("ColorMyPencils", function(opts)
	colors.ColorMyPencils(opts.args ~= "")
end, {})

-- lsp
vim.lsp.enable({ "luals", "emmet-ls", "ruby-lsp", "css-lsp" })

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		-- Show all diagnostics on current line in floating window
		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true, silent = true })

		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, opts)
	end,
})
