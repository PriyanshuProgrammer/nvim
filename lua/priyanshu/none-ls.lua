-- ~/.config/nvim/lua/config/none-ls.lua
local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    -- Example formatters:
    null_ls.builtins.formatting.prettier,    -- for JS, TS, HTML, etc.
    null_ls.builtins.formatting.stylua,      -- for Lua
    null_ls.builtins.formatting.black,       -- for Python
    null_ls.builtins.formatting.clang_format,-- for C/C++
  },
  -- Optional: Format on save
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

