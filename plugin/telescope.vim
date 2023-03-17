nnoremap <Leader>fg :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>ff :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader>fa :lua require('telescope.builtin').find_files({hidden=true})<CR>
nnoremap <Leader>fs :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>fw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
nnoremap <leader>fb :lua require('telescope.builtin').buffers()<CR>

" nnoremap <leader>gs :lua require('telescope.builtin').git_status()<CR>
" nnoremap <leader>gc :lua require('telescope.builtin').git_commits()<CR>

nnoremap <leader>m :lua require('telescope.builtin').marks()<CR>
nnoremap <leader>q :lua require('telescope.builtin').diagnostics({bufnr=0})<CR>
nnoremap gt :lua require('telescope.builtin').lsp_type_definitions()<CR>
nnoremap gr :lua require('telescope.builtin').lsp_references()<CR>

nnoremap <leader>d :lua vim.lsp.buf.code_action()<CR>
