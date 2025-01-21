return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    event = "VeryLazy",
    keys = {
      { "<leader>nt", "<cmd>Neotree <CR>", desc = "Open Neotree", silent = true },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = false,        -- Hide filtered items by default
          hide_dotfiles = true,   -- Hide dotfiles
          hide_gitignored = true, -- Hide gitignored files
          hide_by_name = {
            "node_modules",
            ".git",
            ".DS_Store",
            ".dist",
          },
          never_show = { -- Ensure these are never shown, even when visible is true
            "node_modules",
            ".git",
          },
        },
        follow_current_file = {
          enable = true,
        },                             -- Automatically find and focus the current file
        use_libuv_file_watcher = true, -- Use more efficient file watching
      },
      window = {
        position = "left",
        width = 30,
        mappings = {
          ["<space>"] = "toggle_node",
          ["<cr>"] = "open",
          ["P"] = { "toggle_preview", config = { use_float = true } },
        },
      },
      default_component_configs = {
        indent = {
          with_expanders = true,
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },
    }
  }
}
