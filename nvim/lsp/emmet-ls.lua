return {
  cmd = { "emmet-language-server", "--stdio" },
  filetypes = {
    "html",
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "eruby"
  },
  root_markers = {
    ".git",
    "package.json",
    "Gemfile"
  },
  single_file_support = true,
  settings = {},
}
