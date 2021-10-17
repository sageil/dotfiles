vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})

map('i', 'jk', '<ESC>', {noremap = true, silent = false})
map('i', 'kj', '<ESC>', {noremap = true, silent = false})

map('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})
map('n', '<leader>dui', '<cmd>lua require"dapui".toggle()<CR>', {noremap=true, silent=true})
local options ={noremap = true, silent = true}
--nnoremap <silent> <F5> :lua require'dap'.continue()<CR>
--nnoremap <silent> <F10> :lua require'dap'.step_over()<CR>
--nnoremap <silent> <F11> :lua require'dap'.step_into()<CR>
--nnoremap <silent> <F12> :lua require'dap'.step_out()<CR>
--nnoremap <silent> <leader>b :lua require'dap'.toggle_breakpoint()<CR>
--nnoremap <silent> <leader>B :lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>
--nnoremap <silent> <leader>lp :lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>
--nnoremap <silent> <leader>dr :lua require'dap'.repl.open()<CR>
--nnoremap <silent> <leader>dl :lua require'dap'.repl.run_last()<CR>
