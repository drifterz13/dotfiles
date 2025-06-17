-- tailwind-tools.lua
return {
  "luckasRanarison/tailwind-tools.nvim",
  name = "tailwind-tools",
  build = ":UpdateRemotePlugins",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    document_color = {
      enabled = true,
    },
    conceal = {
      enabled = false,
    },
  },
  keys = {
    { "<leader>tw", "<cmd>TailwindConcealToggle<cr>", desc = "Toggle Tailwind Conceal" },
    { "<leader>ts", "<cmd>TailwindSort<cr>", desc = "Sort Tailwind Classes" },
    { "<leader>tc", "<cmd>TailwindColorToggle<cr>", desc = "Toggle Tailwind Colors" },
  },
  extension = {}
}
