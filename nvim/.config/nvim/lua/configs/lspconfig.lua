local function keymap(mode, key, cmd, desc, ev)
  vim.keymap.set(mode, key, cmd, { desc = desc, buffer = ev.buf })
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    keymap("n", "dn", vim.diagnostic.goto_next, "Diagnostic: Go to next diagnostic", ev)
    keymap("n", "dp", vim.diagnostic.goto_prev, "Diagnostic: Go to previous diagnostic", ev)
    keymap("n", "dq", vim.diagnostic.setloclist, "Diagnostic: Set diagnostics list", ev)
    keymap("n", "df", vim.diagnostic.open_float, "Diagnostic: Open floating diagnostic", ev)
    keymap("n", "gD", vim.lsp.buf.declaration, "LSP: Go to declaration", ev)
    keymap("n", "gd", vim.lsp.buf.definition, "LSP: Go to definition", ev)
    keymap("n", "gT", vim.lsp.buf.type_definition, "LSP: Go to type definition", ev)
    keymap("n", "K", vim.lsp.buf.hover, "LSP: Hover", ev)
    keymap("n", "gi", vim.lsp.buf.implementation, "LSP: Go to implementation", ev)
    keymap("n", "<C-K>", vim.lsp.buf.signature_help, "LSP: Signature help", ev)
    keymap("n", "<space>wa", vim.lsp.buf.add_workspace_folder, "LSP: Add workspace folder", ev)
    keymap("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, "LSP: Remove workspace folder", ev)
    keymap("n", "<space>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, "LSP: List workspace folders", ev)
    keymap("n", "<space>rn", vim.lsp.buf.rename, "LSP: Rename", ev)
    keymap({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, "LSP: Code action", ev)
    keymap("n", "gr", vim.lsp.buf.references, "LSP: Go to references", ev)
  end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

require("neodev").setup({})
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
      completion = {
        callSnippet = "Replace"
      },
    },
  },
})

local servers = { "pyright", "gopls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    capabilities = capabilities,
  }
end
