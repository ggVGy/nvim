local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    return
end

local lspconfig = require("lspconfig")

local servers = { "gopls", "jsonls", "sumneko_lua", "tsserver", "svelte", "html", "cssls", "ccls" }

lsp_installer.setup({
    ensure_installed = servers,
})

for _, server in pairs(servers) do
    local opts = {
        on_attach = require("trim.lsp.handlers").on_attach,
        capabilities = require("trim.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "trim.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
    end
    lspconfig[server].setup(opts)
end
