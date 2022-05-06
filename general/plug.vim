call plug#begin('~/.vim/plugged')
    Plug 'lervag/vimtex'
    "Plug 'vim-airline/vim-airline'
    "Plug 'vim-airline/vim-airline-themes'
    "Plug 'flazz/vim-colorschemes'
    Plug 'beyondmarc/glsl.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    Plug 'mattn/emmet-vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sainnhe/sonokai'
    Plug 'bfrg/vim-cpp-modern'
    Plug 'https://github.com/neovimhaskell/haskell-vim'
call plug#end()

" ============= Markdown preview ==============================================
let g:mkdp_browser = 'surf'

" ============== Emmet          ===============================================
let g:user_emmet_leader_key=','

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

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'default'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:sonokai_better_performance = 1
let g:sonokai_diagnostic_text_highlight = 1
let g:sonokai_spell_foreground = 'colored'
"let g:sonokai_diagnostic_virtual_text = 'colored'

colorscheme sonokai

" ============== Coc ===================================================
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Used in the tab autocompletion for coc
function! s:check_back_space() abort
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
