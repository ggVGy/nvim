local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require "trim.lsp.configs"
require("trim.lsp.handlers").setup()
--[[ require "trim.lsp.null-ls" ]]
