local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#gopls
