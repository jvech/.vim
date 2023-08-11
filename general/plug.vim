call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    "Plug 'flazz/vim-colorschemes'
    Plug 'beyondmarc/glsl.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'mattn/emmet-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'bfrg/vim-cpp-modern'
    Plug 'https://github.com/neovimhaskell/haskell-vim'
    Plug 'sainnhe/sonokai'
    Plug 'sainnhe/edge'
call plug#end()

" ============= Markdown preview ==============================================
let g:mkdp_browser = 'vimb'

" ============== Emmet          ===============================================
"let g:user_emmet_leader_key=','

" ============== vim latex      ===============================================
let g:tex_flavor = 'latex'
let g:livepreview_previewer = 'zathura'

" ============== Completion prompt ============================================
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ============== colorscheme    ===============================================
" Important!!
if has('termguicolors')
  set termguicolors
endif

" Edge
let g:edge_style = 'aura'
let g:edge_better_performance = 1
let g:edge_enable_italic = 1
let g:edge_dim_foreground = 1
let g:edge_disable_italic_comment = 1
let g:edge_transparent_background = 0
let g:edge_spell_foreground = 'colored'
let g:edge_diagnostic_text_highlight = 1
let g:edge_diagnostic_line_highlight = 1
colorscheme edge

" ============== Coc ===================================================
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')
" Use <c-space> to trigger completion.
"inoremap <silent><expr> <c-space> coc#refresh()

" ============== Haskell-vim ==========================================
let g:haskell_indent = 4
let g:haskell_indent_if = 0
let g:haskell_indent_before_where = -2
let g:haskell_indent_where = 6
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_guard = 4

" ============= Vimtex ================================================
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_view_method = 'zathura'
