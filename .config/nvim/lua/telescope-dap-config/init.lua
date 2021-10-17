local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
vim.g.dap_virtual_text = true
vim.fn.sign_define('DapBreakpoint', {text='️ ', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapBreakpointRejected', {text='️ ', texthl='', linehl='', numhl=''})
vim.fn.sign_define('DapStopped', {text='️ ', texthl='', linehl='', numhl=''})
map('n', '<leader>dh', ':lua require"dap".toggle_breakpoint()<CR>')
map('n', '<leader>dH', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
--map('n', '<c-k>', ':lua require"dap".step_out()<CR>')
--map('n', '<c-l>', ':lua require"dap".step_into()<CR>')
--map('n', '<c-j>', ':lua require"dap".step_over()<CR>')
--map('n', '<c-h>', ':lua require"dap".continue()<CR>')
map('n', '<leader>dk', ':lua require"dap".up()<CR>')
map('n', '<leader>dj', ':lua require"dap".down()<CR>')
map('n', '<leader>dc', ':lua require"dap".disconnect({ terminateDebuggee = true });require"dap".close()<CR>')
map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l')
map('n', '<leader>di', ':lua require"dap.ui.variables".hover()<CR>')
map('n', '<leader>di', ':lua require"dap.ui.variables".visual_hover()<CR>')
map('n', '<leader>d?', ':lua require"dap.ui.variables".scopes()<CR>')
map('n', '<leader>de', ':lua require"dap".set_exception_breakpoints({"all"})<CR>')
map('n', '<leader>da', ':lua require"debugHelper".attach()<CR>')
map('n', '<leader>dA', ':lua require"debugHelper".attachToRemote()<CR>')
map('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>')
map('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>')
--map('n','<silent><F5>', ':lua require"dap".continue()<CR>')
vim.cmd('nnoremap <silent> <F5> :lua require"dap".continue()<CR>')
vim.cmd('nnoremap <silent> <F10> :lua require"dap".step_over()<CR>')
vim.cmd('nnoremap <silent> <F11> :lua require"dap".step_into()<CR>')
vim.cmd('nnoremap <silent> <F12> :lua require"dap".step_out()<CR>')
-- nvim-telescope/telescope-dap.nvim
require('telescope').load_extension('dap')
map('n', '<leader>ds', ':Telescope dap frames<CR>')
-- map('n', '<leader>dc', ':Telescope dap commands<CR>')
map('n', '<leader>db', ':Telescope dap list_breakpoints<CR>')

