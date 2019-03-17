" source ~/dotfiles/vimrc

"To download stuff for vim you need to install
"Python, Pathogen and curl

"Plugins run this in terminal -> curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  This would allow me to install plugins 
"To install something new, run :PlugInstall in vim
call plug#begin()

Plug 'dracula/vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline' 
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion' 

call plug#end()

"required to used pathogen
"execute pathogen#infect()

"This is to have the line numbers
set number

"This allows the cursor be placed where I click
"set mouse=a

"This is to use jk instead of using <esc>
inoremap jk <esc>

"This is another mapp, instead of using \ we can use the space bar
let mapleader = "\<Space>"

"This to show the command that I am using
set showcmd

"This is to have the relative number of a line
set rnu

"This show the line that I am writing with highlight
set cursorline

"This select the colorsheme that I want.
"colorscheme nord

"This line remove italic so the theme does not get messed up.
let g:dracula_italic=0
color dracula

"enables syntax coloring
syntax on

"enables indent
filetype plugin indent on

"For the airlines I used https://github.com/tpope/vim-pathogen used it and
"the instuctions are there.

"This is for the error feedbacks
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Mapping the way of moving throught the buffers
nnoremap  <C-j> <C-w><C-j>
nnoremap  <C-k> <C-w><C-k>
nnoremap  <C-l> <C-w><C-l>
nnoremap  <C-h> <C-w><C-h>

"For the NERDTree I installed git clone
"https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
map <C-n> :NERDTreeToggle<CR>

" To install Easymotion git clone https://github.com/easymotion/vim-easymotion ~/.vim/bundle/vim-easymotion


"This will set the folding level, to fold something use za, to unfold zo and
"to unfold everything use zR
set foldmethod=syntax
