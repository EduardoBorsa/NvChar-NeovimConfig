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
  \    '*.py':  {
  \       'skeleton': 'mod',
  \       'alternate': 'test_{}.py'
  \    },
  \    'test_*.py':  {
  \      'alternate': '{}.py',
  \      'skeleton': 'case'
  \     },
  \ })
augroup END
