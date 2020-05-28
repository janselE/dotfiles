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
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

Plug 'majutsushi/tagbar'
Plug 'jacquesbh/vim-showmarks'

call plug#end()

"autocmd Filetype tex setl updatetime=1
"let g:livepreview_previewer = 'open -a Preview'

"required to used pathogen
"execute pathogen#infect('~/.vim/bundle/{}')

"set listchars=tab:\│\
"set list
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"This is for grovbox this is the color scheme
colorscheme gruvbox

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"This is to open fuzzy finder
"this two are very similar
"I still deciding which one
"should I stay with
nnoremap <C-p> :GFiles<CR>
map <C-n> :Files<CR>

"This trigger autocomplete with tab
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"This is to have the relative number of a line
set rnu
set number

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

" This will set the folding level, to fold something use za, to unfold zo and
" to unfold everything use zR
"set foldmethod=syntax


"Show marks
nnoremap <leader>m :DoShowMark<cr>


"This is to open tagbar
nnoremap<C-b> :TagbarToggle<CR>

"This is to remap T and K to work
nnoremap <S-j> <s-l>zz
nnoremap <S-k> <s-h>zz
