return {
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    config = function()
      local ls = require("luasnip")
      local s = ls.snippet
      local t = ls.text_node
      local i = ls.insert_node
      local c = ls.choice_node

      -- ERB snippets for both eruby and erb filetypes
      local erb_snippets = {
        s("erb", {
          t("<% "), i(1), t(" %>")
        }),
        s("erbe", {
          t("<%= "), i(1), t(" %>")
        }),
        s("erbc", {
          t("<%# "), i(1), t(" %>")
        }),
        s("eif", {
          t("<% if "), i(1), t(" %>"),
          t({"", "  "}), i(2),
          t({"", "<% end %>"})
        }),
        s("eunless", {
          t("<% unless "), i(1), t(" %>"),
          t({"", "  "}), i(2),
          t({"", "<% end %>"})
        }),
        s("eeach", {
          t("<% "), i(1), t(".each do |"), i(2), t("| %>"),
          t({"", "  "}), i(3),
          t({"", "<% end %>"})
        }),
        s("eform", {
          t("<%= form_with(model: "), i(1), t(", local: true) do |form| %>"),
          t({"", "  "}), i(2),
          t({"", "<% end %>"})
        }),
        s("elink", {
          t("<%= link_to \""), i(1), t("\", "), i(2), t(" %>")
        }),
        s("erender", {
          t("<%= render \""), i(1), t("\" %>")
        }),
      }
      
      -- Add snippets to both eruby and erb filetypes
      ls.add_snippets("eruby", erb_snippets)
      ls.add_snippets("erb", erb_snippets)

      -- Set up keymaps for snippet navigation (not expansion - handled by cmp)
      vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
      vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
    end,
  }
}