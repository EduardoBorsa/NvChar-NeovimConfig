augroup vimrc_syntax_elixir
  autocmd User ProjectionistDetect
  \ call projectionist#append(getcwd(),
  \ {
  \    'lib/*.ex':  {
  \       'skeleton': 'mod',
  \       'alternate': 'test/{}_test.exs'
  \    },
  \    'test/*_test.exs':  {
  \      'alternate': 'lib/{}.ex',
  \      'skeleton': 'case'
  \     },
  \ })
augroup END


" nnoremap <silent> <C-th> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>
" nnoremap <silent> <C-tj> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>
" nnoremap <silent> <C-tk> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>
" nnoremap <silent> <C-tl> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>
nnoremap <silent> <C-\> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>
nnoremap <silent> <C-Space> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>
