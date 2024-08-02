packadd edge
packadd coc.nvim
packadd markdown-preview.nvim

" ============= Markdown preview ==============================================
let g:mkdp_browser = 'vimb'

" ============== Emmet          ===============================================
au BufRead,BufNewFile *.{html,css} let user_emmet_leader_key=','
au BufRead,BufNewFile *.{html,css} packadd emmet-vim


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
set tagfunc=CocTagFunc
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
"Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh() 
