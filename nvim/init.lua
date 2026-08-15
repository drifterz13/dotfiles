vim.filetype.add({
	extension = {
		sc = "scala",
	},
})

require("config")

-- Register a command to switch to terminal background.
local colors = require("config.colors")
vim.api.nvim_create_user_command("ColorMyPencils", function(opts)
	colors.ColorMyPencils(opts.args ~= "")
end, {})

local ts_group = vim.api.nvim_create_augroup("TreesitterHighlight", { clear = true })

-- Create the Autocommand
vim.api.nvim_create_autocmd("FileType", {
	group = ts_group,
	pattern = { "prisma" },
	callback = function()
		pcall(vim.cmd, "TSBufEnable highlight")
	end,
})

-- lsp
vim.lsp.enable({
	"luals",
	"emmet-ls",
	"ruby-lsp",
	"css-lsp",
	"tailwindcss",
	"vtsls",
	"prismals",
	"go-lsp",
	"openapi-ls",
	"yaml-ls",
	"sqls",
	"pyright",
	"gleam",
	"elixir-ls",
})

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local opts = { buffer = event.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
		-- Show all diagnostics on current line in floating window
		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { noremap = true, silent = true })
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_prev({ wrap = false })
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_next({ wrap = false })
		end, opts)

		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "<leader>f", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, opts)
	end,
})
