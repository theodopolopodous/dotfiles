
" Mapped keyboard shortcuts
let mapleader=","

set nocompatible
set mouse=a
set clipboard=unnamed

" Plugins here
call plug#begin('~/.vim/plugged')
	Plug 'vim/killersheep'
	Plug 'tmsvg/pear-tree'
	Plug 'christoomey/vim-system-copy'
	Plug 'terryma/vim-smooth-scroll'
	Plug 'RRethy/vim-illuminate'
	Plug 'matze/vim-move'
	Plug 'justinmk/vim-sneak'
	Plug 'jiangmiao/auto-pairs'
			let g:AutoPairs = {}
	Plug 'ap/vim-buftabline'
			let g:buftabline_number = 2
			let g:buftabline_indicators = 1
			let g:buftabline_numbers = 2
			nmap <leader>1 <Plug>BufTabLine.Go(1)
			nmap <leader>2 <Plug>BufTabLine.Go(2)
			nmap <leader>3 <Plug>BufTabLine.Go(3)
			nmap <leader>4 <Plug>BufTabLine.Go(4)
			nmap <leader>5 <Plug>BufTabLine.Go(5)
			nmap <leader>6 <Plug>BufTabLine.Go(6)
			nmap <leader>7 <Plug>BufTabLine.Go(7)
			nmap <leader>8 <Plug>BufTabLine.Go(8)
			nmap <leader>9 <Plug>BufTabLine.Go(9)
			nmap <leader>0 <Plug>BufTabLine.Go(10)
	Plug 'vim-airline/vim-airline'
	Plug 'liuchengxu/vim-clap'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'gregsexton/gitv', {'on': ['Gitv']}
	Plug 'junegunn/vim-easy-align'
	Plug 'junegunn/vim-github-dashboard'
	Plug 'jreybert/vimagit'
	Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
	Plug 'godlygeek/tabular'
	Plug 'tpope/vim-commentary'
	Plug 'zweifisch/pipe2eval'
	Plug 'junegunn/rainbow_parentheses.vim'
	Plug 'nathanaelkane/vim-indent-guides'
			let g:indent_guides_space_guides = 0
			let g:indent_guides_color_change_percent = 5
			let g:indent_guides_tab_guides = 1
			autocmd VimEnter * :IndentGuidesEnable
	Plug 'airblade/vim-gitgutter'
		let g:gitgutter_max_signs=9999
		nnoremap <silent> ]h <Plug>(GitGutterNextHunk)<CR>
		nnoremap <silent> [h <Plug>(GitGutterPrevHunk)<CR>
		nnoremap <silent> <Leader>hu <Plug>(GitGutterUndoHunk)<CR>
	Plug 'scrooloose/nerdtree'
			let g:NERDTreeMapJumpNextSibling = ''
			nmap <leader>d :NERDTreeToggle<CR>
			nmap <leader>D :NERDTreeFind<CR>
			let g:NERDSpaceDelims=1
			let g:NERDTreeIgnore=['node_modules$[[dir]]']
			let g:miniBufExplModSelTarget = 1
			let NERDTreeQuitOnOpen = 1
			set switchbuf=useopen,usetab
			let g:NERDTreeWinSize=60
			"let g:netrw_banner = 0
			"let g:netrw_liststyle = 3
			"function! ToggleNetrw()
			"	if g:NetrwIsOpen
			"		silent <C-^>
			"	else
			"		silent Exlpore
			"	endif
			"endfunction
			"nmap <leader>d :ToggeNetrw<CR>
			"nmap <leader>d :Exploe<CR>
	Plug 'xuyuanp/nerdtree-git-plugin'
	Plug 'junegunn/goyo.vim'
			map <C-E> :set wrap!<cr>:Goyo<cr>
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
			command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0) " https://github.com/junegunn/fzf.vim/issues/346
			"nnoremap <c-t> :FZF<cr>
			" Line completion http://sts10.github.io/blog/2016/01/09/vim-line-complete-with-fzf/
			"imap <C-c> <plug>(fzf-complete-line)
			"command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
	Plug 'itchyny/vim-gitbranch'
	Plug 'ap/vim-css-color'
	Plug 'styled-components/vim-styled-components'
	Plug 'moll/vim-bbye'
	Plug 'groenewege/vim-less'
	Plug 'chrisbra/csv.vim'
	Plug 'elzr/vim-json'
			let g:vim_json_syntax_conceal = 0
	"Plug 'jiangmiao/simple-javascript-indenter'
	Plug 'hotoo/jsgf.vim'
	" Plug 'https://github.com/pengwynn/jsgf.vim.git', { 'branch': 'enhancemen-ts' }
	Plug 'rhlobo/vim-super-retab'
	Plug 'vim-scripts/restore_view.vim'
	Plug 'miyakogi/seiya.vim'
			let g:seiya_auto_enable=1
	Plug 'pangloss/vim-javascript'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'leafgarland/typescript-vim'
	Plug 'maxmellon/vim-jsx-pretty'
	Plug 'sonph/onehalf', {'rtp': 'vim/'}
	Plug 'nanotech/jellybeans.vim'
	Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	Plug 'wellle/context.vim'
	Plug 'mhinz/vim-startify'
			let g:startify_change_to_vcs_root = 1
			autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif
	" Plug 'paulkass/jira-vim'
	" let g:jiraVimDomainName = "https://jira.dss.ext.national.com.au/"
	" let g:jiraVimEmail = "jason.x.bowerman@nab.com.au"
	Plug 'pechorin/any-jump.vim'
call plug#end()

		 
set nobackup
set nowrap
set linebreak
set textwidth=0
set wrapmargin=0
set backspace=2 " make backspace work like most other apps
set hidden
set ignorecase " ignore case when searching
set wildmode=longest:full
set ruler " show cursor position
set cursorline
set shiftround " use multiple of shiftwidth when indenting with '<' and '>'
set laststatus=2
set statusline=%<%f%=\ [%m%r%h%y]\ (%(%l,%c%))
set number " always show line numbers
set hlsearch " highlight search terms
set incsearch " show search matches as you type
set history=100 " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title  " change the terminal's title
set noswapfile
set cindent
set cinkeys-=0#
set updatetime=250 " helpful for git-gutter
set showcmd
set autoindent
set smartindent
set noexpandtab
set tabstop=4
set shiftwidth=4
set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
set wildmode=longest,list,full " tab completion
set wildmenu
 
filetype off
filetype indent plugin on
 
" stop u from underlining
vnoremap u <Nop>
 
" centre cursor on screen https://hackr.pl/2017/01/11/some-of-my-favorite-vimrc-edits/
set so=999
nmap <leader>m :set so=999<cr>
nmap <leader><leader>m :set so=0<cr>
 
" This unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>
 
" Search-replace word under cursor http://vim.wikia.com/wiki/Search_and_replace_the_word_under_the_cursor#Mapping
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/
 
" Buffer shortcuts
let g:BASH_Ctrl_j = 'off'
nnoremap <C-b> :buffers<CR>

" Ctrl-h/l for buffer navigation
augroup vimrc
	au!
	au vimenter * noremap <C-l> :bnext<CR>
	au vimenter * noremap <C-j> :bprev<CR>
augroup END


" Persistent undo https://jovicailic.org/2017/04/vim-persistent-undo/
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
 
" Bubble multiple lines
vmap <C-k> xkP`[V`]
vmap <C-j> xp`[V`]`]]`
 
" Wrapped text counts as multiple lines when wrapping
nnoremap j gj
nnoremap k gk
 
" Disable arrow keys when editing
" inoremap        <Up>     <NOP>
" inoremap        <Down>   <NOP>
" inoremap        <Left>   <NOP>
" inoremap        <Right>  <NOP>
" noremap         <Up>     <NOP>
" noremap         <Down>   <NOP>
" noremap         <Left>   <NOP>
" noremap         <Right>  <NOP>

" yank current file path and line number
nnoremap <leader>C :let @+=expand("%") . ':' . line(".")<CR>


" Paste https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
function! XTermPasteBegin()
		set pastetoggle=<Esc>[201~
		set paste
		return ""
endfunction



let g:jellybeans_overrides = {
\    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
\              'ctermfg': 'Black', 'ctermbg': 'Yellow',
\              'attr': 'bold' },
\    'Comment': { 'guibg': '000000' },
\}

" Colours
syntax enable
set background=dark
colorscheme jellybeans

highlight Comment cterm=italic 
" gui=italic




" FZF
	
let g:fzf_command_prefix = 'Fz'
let g:fzf_commands_expect = 'alt-enter'
let g:fzf_history_dir = '~/.local/share/fzf-history'
	
nnoremap <silent> <leader>f :call <SID>open_fzf()<CR>
	
function! s:open_fzf()
	let l:commands= [ 'Files', 'Buffers', 'BLines', 'Ag', 'Commands', 'GFiles?', 'gcheckout', 'History', 'Tags', 'BTags' ]
	let l:choices = [ '&files', '&buffers', '&lines', '&ag', '&commands', 'git &status', '&git checkout', '&history', '&tags', 'buffer &Tags' ]
	let l:choice = confirm('Complete', join(l:choices, "\n"))
	if l:choice != 0
	execute ':Fz'.l:commands[l:choice - 1]
	endif
endfunction
	
augroup fzfMappingsAu
	autocmd!
	autocmd FileType fzf tnoremap <buffer> <silent> <C-f>
	\ <C-\><C-n>:close<CR>
	\ :sleep 50m<CR>
	\ :call <SID>open_fzf()<CR>
augroup END
	
function! s:open_branch_fzf(line)
	let l:parser = split(a:line)
	let l:branch = l:parser[0] ==? '*' ? l:parser[1] : l:parser[0]
	execute 'terminal git checkout ' . l:branch
	call feedkeys('i', 'n')
endfunction
	
function! s:show_branches_fzf(bang)
	let l:current = system('git symbolic-ref --short HEAD')
	let l:current = substitute(l:current, '\n', '', '')
	call fzf#vim#grep(
	\ "git branch -v | sed -r -e '/^\\*/d' -e 's/^\\s*//'", 0,
	\ { 'sink': function('s:open_branch_fzf'), 'options': ['--no-multi', '--header='.l:current] }, a:bang)
endfunction
	
command! -bang -nargs=0 FzGCheckout call <SID>show_branches_fzf(<bang>0)
	
	
	
	
" https://vi.stackexchange.com/questions/9104/gvim-statusline-is-loading-but-not-its-colours/9113#9113
" Underline Highlight for illuminate
fun! s:highlight()
	highlight illuminatedWord cterm=underline gui=underline
endfun
	
augroup myplugin_highlight
	autocmd!
	autocmd ColorScheme * call s:highlight()
augroup end
call s:highlight()






function! GoToNextIndent(inc)
    " Get the cursor current position
    let currentPos = getpos('.')
    let currentLine = currentPos[1]
    let matchIndent = 0

    " Look for a line with the same indent level whithout going out of the buffer
    while !matchIndent && currentLine != line('$') + 1 && currentLine != -1
        let currentLine += a:inc
        let matchIndent = indent(currentLine) == indent('.')
    endwhile

    " If a line is found go to this line
    if (matchIndent)
        let currentPos[1] = currentLine
        call setpos('.', currentPos)
    endif
endfunction
nnoremap ni :call GoToNextIndent(1)<CR>
nnoremap pi :call GoToNextIndent(-1)<CR>
