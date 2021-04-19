--|  @keymappings.lua  |--


local function map (mode, lhs, rhs, options)
  if(options == nil) then
    options = { noremap = true, silent = true }
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- leader key
vim.g.mapleader = ' '
map('n', '<Space>', '')


-- toggle higlight
map('n', '<Leader>h', ':set hlsearch!<CR>')


-- easy escape
map('i', 'jk', '<ESC>')
map('i', 'kj', '<ESC>')
map('i', 'jj', '<ESC>')


-- explorer
map('n', '<Leader>e', ':NvimTreeToggle<CR>')


-- better window navigation
map('n', '<C-h>', '<C-w>h', { silent = true })
map('n', '<C-j>', '<C-w>j', { silent = true })
map('n', '<C-k>', '<C-w>k', { silent = true })
map('n', '<C-l>', '<C-w>l', { silent = true })


-- indenting
map('v', '<', '<gv')
map('v', '>', '>gv')


-- switch buffer
map('n', '<TAB>', ':bnext<CR>')
map('n', '<S-TAB>', ':bprevious<CR>')


-- move lines in visual mode
map('x', 'K', [[:move '<-2<CR>gv-gv']])
map('x', 'J', [[:move '>+1<CR>gv-gv']])


-- autocomplete with tab
map('i', '<expr><TAB>', [[pumvisible() ? '\<C-n>' : '\<TAB>']])


