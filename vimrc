" source ~/dotfiles/vimrc

"To download stuff for vim you need to install
"Python, Pathogen and curl
"Plugins run this in terminal -> curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  This would allow me to install plugins
"To install something new, run :PlugInstall in vim
call plug#begin()


"Plug 'dracula/vim'
"Plug 'itchyny/lightline.vim'
"Plug 'scrooloose/nerdtree'
"Plug 'vim-airline/vim-airline'
"Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'

"required to used pathogen
"execute pathogen#infect('~/.vim/bundle/{}')

"set listchars=tab:\│\
"set list

"This is to have the relative number of a line
set rnu

"This allows the cursor be placed where I click
set mouse=a

"This is to use jk instead of using <esc>
inoremap jk <esc>
inoremap <S-Tab> <C-n>

"This is another mapp, instead of using \ we can use the space bar
let mapleader = "\<Space>"

"This to show the command that I am using
"set showcmd

"This show the line that I am writing with highlight
set cursorline
"set cursorcolumn

"This highlight my text while I am writing
"set incsearch

"This select the colorsheme that I want.
"colorscheme nord

"This line remove italic so the theme does not get messed up.
"let g:dracula_italic=0
"color dracula

"enables syntax coloring
"syntax on
"filetype indent plugin on

"enables indent
"filetype plugin indent on

"Status line settings
set statusline=
set statusline+=\ %M
set statusline+=\ %y
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%= "Right side settings
set statusline+=\ %c:%l/%L
set statusline+=\ %p%%
set statusline+=\ [%n]

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

"Mapping the way of moving throught the buffers
nnoremap  <C-j> <C-w><C-j>
nnoremap  <C-k> <C-w><C-k>
nnoremap  <C-l> <C-w><C-l>
nnoremap  <C-h> <C-w><C-h>

"For the NERDTree I installed git clone
"https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
"map <C-n> :NERDTreeToggle<CR>

" To install Easymotion git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion

" This will set the folding level, to fold something use za, to unfold zo and
" to unfold everything use zR
"set foldmethod=syntax

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" to instal ffinder git clone https://github.com/kien/ctrlp.vim.git bundle/ctrlp.vim
