set number
set relativenumber
set autoindent
set showmatch
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set cindent
set incsearch
filetype plugin on

" set spell

set encoding=utf-8

"" different filetype settings
"
"" YouCompleteMe
"
"" let g:ycm_clangd_uses_ycmb_caching = 0
" let g:ycm_clangd_binary_path = '/usr/local/bin/clangd/clangd'
""
"" Remap the leader key to <SPACE>
"nnoremap <SPACE> <Nop>
"let mapleader=" "
"noremap <leader>w <C-w>
""
"set foldcolumn=5
"set foldenable
""
"set dictionary+=/usr/share/dict/words
"set dictionary+=~/Res/.mydict
""
"set thesaurus+=~/Res/mobythesaurus
"set thesaurus+=~/Res/.mythesaurus
""
" Quick C-Style Commenting with: . Uncomment with: 
""	" noremap  :s/^/\/\//<CR>
""	" noremap  :s/^\/\///<CR>
""
"syntax enable
""
""
" Vim Plug
""
""	call plug#begin()
""		" Plug 'dense-analysis/ale'
""		Plug 'liuchengxu/space-vim-theme'
""		Plug 'altercation/vim-colors-solarized'
""		Plug 'vim-airline/vim-airline'
""		Plug 'vim-airline/vim-airline-themes'
""		Plug 'octol/vim-cpp-enhanced-highlight'
""		" Plug 'ycm-core/YouCompleteMe'
""		Plug 'jreybert/vimagit'
""		Plug 'jiangmiao/auto-pairs'
""		Plug 'frazrepo/vim-rainbow'
""		Plug 'preservim/nerdcommenter'
""		Plug 'puremourning/vimspector'
""		Plug 'ryanoasis/vim-devicons'
""		Plug 'neoclide/coc.nvim', {'branch': 'release'}
""		Plug 'tpope/vim-fugitive'
""		Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
""		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
""		Plug 'wlemuel/vim-tldr'
""		Plug 'junegunn/fzf.vim'
""		Plug 'godlygeek/tabular'
""		Plug 'mbbill/undotree'
""		Plug 'deoplete-plugins/deoplete-clang'
""		Plug 'vim-syntastic/syntastic'
""		Plug 'terryma/vim-multiple-cursors'
""		Plug 'jkramer/vim-checkbox'
""		Plug 'rizzatti/dash.vim'
""		Plug 'preservim/nerdtree'
""	 	Plug 'mattn/emmet-vim'
""		Plug 'romgrk/doom-one.vim' " install doom-one emacs theme
""	call plug#end()
""
"set background=dark
"" colorscheme doom-one
""
"
"" Airline
"
""	" Set theme
""	let g:airline_theme='onedark'
""	" To be able to use powerline glyphs
""	let g:airline_powerline_fonts = 1
""	" Define dictionary for using Unicode/Powerline symbols on tabline
""	if !exists('g:airline_symbols')
""	let g:airline_symbols = {}
""	endif
"	" powerline symbols
""	let g:airline_left_sep = ''
""	let g:airline_left_alt_sep = ''
""	let g:airline_right_sep = ''
""	let g:airline_right_alt_sep = ''
""	let g:airline_symbols.branch = ''
""	let g:airline_symbols.readonly = ''
""	let g:airline_symbols.linenr = '☰'
""	let g:airline_symbols.maxlinenr = ''
""	let g:airline_symbols.dirty='⚡'
""
""	let g:airline_detect_modified=1
""	let g:airline_detect_crypt=1
""
"
"" NERDTree
"
""	" Toggle with
""	noremap <Leader><TAB> :NERDTreeToggle<CR>
""	" Close vim if only window left is NERDTree on 'q'
""	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""
""
" ViMagit
""
""
"
"" NERDCommenter
"
""	" Add spaces after comment delimiters by default
""	let g:NERDSpaceDelims = 1
""	" Enable trimming of trailing whitespace when uncommenting
""	let g:NERDTrimTrailingWhitespace = 1
""	" Allow commenting and inverting empty lines (useful when commenting a region)
""	let g:NERDCommentEmptyLines = 1
""	" Align line-wise comment delimiters flush left instead of following code indentation
""	let g:NERDDefaultAlign = 'left'
""
""
" ALE
""
""	" let g:ale_cpp_clang_options = '-pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -std=c++17 -Werror -I../include'
""
""
" Syntastic
""
"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler_options = '-pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -std=c++17 -Werror -I../include'
""
"
"" Rainbow
"
""	" Enable it globally
""		"let g:rainbow_active = 1
""	" Enable for specific file types
""	au FileType c,cpp,js,java,json call rainbow#load()
""
"
"" Vimspector
"
""
""    " <Plug>VimspectorContinue
""    " <Plug>VimspectorStop
""    " <Plug>VimspectorRestart
""    " <Plug>VimspectorPause
""	noremap <leader>db <Plug>VimspectorToggleBreakpoint
""    " <Plug>VimspectorToggleConditionalBreakpoint
""    " <Plug>VimspectorAddFunctionBreakpoint
""    " <Plug>VimspectorStepOver
""    " <Plug>VimspectorStepInto
""    " <Plug>VimspectorStepOut
""
"
" Vim Checkbox
"
"let g:checkbox_states = [' ', 'x']
"let g:insert_checkbox_prefix = ''
"let g:insert_checkbox_suffix = ' '
""
"
" Gitgutter
"
""	" Change vim's uptime to allow quicker update of gitgutter
""	set updatetime=100
""	" Remap hunk-jumps keys
""	nmap ]h <Plug>(GitGutterNextHunk)
""	nmap [h <Plug>(GitGutterPrevHunk)
""
""
"" Emmet-Vim
""
""	" only works in insert mode
""	let g:user_emmet_mode='inv'
""	" install only for html/css
""	let g:user_emmet_install_global = 0
""	autocmd FileType html,css EmmetInstall
""	" reset trigger keycombo -- remember trailing ,
""	" let g:user_emmet_leader_key='<c-y>'
