syntax enable
filetype plugin indent on

call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'rust-lang/rust.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'crusoexia/vim-monokai'
  Plug 'vim-airline/vim-airline'
  Plug 'airblade/vim-gitgutter'
  "Plug 'zah/nim.vim'
  Plug 'alaviss/nim.nvim'
  Plug 'prabirshrestha/asynccomplete.vim'
call plug#end()
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-r> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"{"rust-analyzer.server.path": "/home/sideus/.local/bin/rust-analyzer"}
let g:indent_guides_enable_on_vim_startup = 1

colorscheme monokai
set nu
set cursorline 
au User asyncomplete_setup call asyncomplete#register_source({     
			\ 'name': 'nim',     
			\ 'whitelist': ['nim'],     
			\ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}     
		        \ })
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-r> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"{"rust-analyzer.server.path": "/home/sideus/.local/bin/rust-analyzer"}
let g:indent_guides_enable_on_vim_startup = 1

colorscheme monokai
set nu
set cursorline 
au User asyncomplete_setup call asyncomplete#register_source({     
			\ 'name': 'nim',     
			\ 'whitelist': ['nim'],     
			\ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}     
		        \ })
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-r> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"{"rust-analyzer.server.path": "/home/sideus/.local/bin/rust-analyzer"}
let g:indent_guides_enable_on_vim_startup = 1

colorscheme monokai
set nu
set cursorline 
au User asyncomplete_setup call asyncomplete#register_source({     
			\ 'name': 'nim',     
			\ 'whitelist': ['nim'],     
			\ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}     
		        \ })
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-r> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"if has('nvim')
"  inoremap <silent><expr> <c-space> coc#refresh()
"else
"  inoremap <silent><expr> <c-@> coc#refresh()
"endif

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"{"rust-analyzer.server.path": "/home/sideus/.local/bin/rust-analyzer"}
let g:indent_guides_enable_on_vim_startup = 1

colorscheme monokai
set nu
set cursorline 
au User asyncomplete_setup call asyncomplete#register_source({     
			\ 'name': 'nim',     
			\ 'whitelist': ['nim'],     
			\ 'completor': {opt, ctx -> nim#suggest#sug#GetAllCandidates({start, candidates -> asyncomplete#complete(opt['name'], ctx, start, candidates)})}     
		        \ })
set clipboard=unnamedplus

let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
	if win_gotoid(g:term_win)
		hide
	else
		botright new
		exec "resize " .a:height
	        try 
	        	exec "buffer " . g:term_buf
	        catch
	        	call termopen($SHELL, {"detach": 0})
	        	let g:term_buf = bufnr("")
	        	set nonumber
	        	set norelativenumber
	        	set signcolumn=no
	        endtry
	        startinsert!
	        let g:term_win = win_getid()
	endif
endfunction

nnoremap <A-t> :call TermToggle(12)<CR>
nnoremap <A-t> <Esc>:call TermToggle(12)<CR>
tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>
