require("conform").setup({
  formatters_by_ft = {
    go = { "goimports-reviser", "gofmt", "golines" },
    lua = { "stylua" },
    python = { "black" },
  },
  format_on_save = {
    timeout_ms = 1000,
    lsp_fallback = true,
  }
})
