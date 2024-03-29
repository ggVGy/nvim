function CreateNoremapGlobal(type, opts)
    return function(lhs, rhs)
        vim.api.nvim_set_keymap(type, lhs, rhs, opts)
    end
end

function CreateNoremap(type, opts)
    return function(lhs, rhs, bufnr)
        bufnr = bufnr or 0
        vim.api.nvim_buf_set_keymap(bufnr, type, lhs, rhs, opts)
    end
end

function CreateAutocmd()
    return function(lhs, rhs, bufnr)
        bufnr = bufnr or 0
        vim.api.nvim_create_autocmd(lhs, { buffer = bufnr, command = rhs })
    end
end

-- local autocmd = vim.api.nvim_create_autocmd
-- autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()

NnoremapGlobal = CreateNoremapGlobal("n", { noremap = true })
NnoremapGlobal("<leader>nc",
    "<cmd>:lua require(\"tree-navigation.telescope\").navigate_to(require(\"tree-navigation\").get_class_nodes())<CR>");

Nnoremap = CreateNoremap("n", { noremap = true })
Inoremap = CreateNoremap("i", { noremap = true })
Autocmd = CreateAutocmd("CursorMoved")


require("trim.telescope")
require("trim.lsp")
require("trim.cmp")
--[[ require("trim.autopairs") ]]
require("trim.comments")
--[[ require("trim.treesitter") ]]
