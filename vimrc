" source ~/dotfiles/vimrc

"To download stuff for vim you need to install
"VimPlug is better than pathogen
"Python, Pathogen and curl
"Plugins run this in terminal -> curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim  This would allow me to install plugins
"To install something new, run :PlugInstall in vim
call plug#begin()
"Plug 'scrooloose/nerdtree'
"Plug 'itchyny/lightline.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/syntastic'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'Yggdroot/indentLine'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'

"Colorscheme
Plug 'dracula/vim'
Plug 'gilgigilgil/anderson.vim'
Plug 'relastle/bluewery.vim'
Plug 'arcticicestudio/nord-vim'



Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'morhetz/gruvbox'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do':{->coc#util#install()}}
"Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
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

" this does not fold the lines
set wrap!
set smartcase
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set clipboard=unnamedplus
"set spell!

"Sets the column mark this is to let me know linebreak
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-j>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"This is for grovbox this is the color scheme
colorscheme gruvbox

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" this is important to add the required libraries for Coc
let g:python3_host_prog = '~/home/jansel/miniconda3/envs/neovim/bin'
set updatetime=300
"let g:coc_force_debug = 1


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
"imap <TAB> <C-n>

"This is another map, instead of using \ we can use the space bar
let mapleader = "\<Space>"

"This to show the command that I am using
"set showcmd

"This show the line that I am writing with highlight
set cursorline
set cursorcolumn

"This highlight my text while I am writing
"set incsearch

"This select the colorsheme that I want.
"colorscheme nord
"hi Visual cterm=NONE ctermfg=black ctermbg=white

"This line remove italic so the theme does not get messed up.
"let g:dracula_italic=1
"color dracula
"colorscheme anderson
" For dark
"colorscheme bluewery
"let g:lightline = { 'colorscheme': 'bluewery' }

"enables syntax coloring
"syntax on
"filetype indent plugin on

"enables indent
"filetype plugin indent on

"Status line settings
"set statusline=
"set statusline+=\ %M
"set statusline+=\ %y
"set statusline+=\ %r
"set statusline+=\ %F
"set statusline+=%= "Right side settings
"set statusline+=\ %c:%l/%L
"set statusline+=\ %p%%
"set statusline+=\ [%n]

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
"nnoremap <leader>m :DoShowMark<cr>


"This is to open tagbar
nnoremap<C-b> :TagbarToggle<CR>

"This is to remap T and K to work
nnoremap <S-j> <s-l>zz
nnoremap <S-k> <s-h>zz
nnoremap <leader>c :%s/\s\+$//e<CR>



"Airlines
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:airline_theme = 'gruvbox'
"let g:airline_theme = 'onedark'
"let g:airline_theme = 'dracula'

set showtabline=2
set noshowmode
"End Airlines

" FZF maps
nmap <leader>p :GFiles<cr>
" Search and switch buffers
nmap <leader>b :Buffers<cr>
" Find files by name under the current directory
nmap <leader>f :Files<cr>
" Find files by name under the home directory
nmap <leader>h :Files ~/<cr>
" Search content in the current file
nmap <leader>l :BLines<cr>
" Search content in the files
nmap <leader>L :Lines<cr>


" This are remmaped to deal with github
nmap <leader><leader>g :G<cr>
nmap <leader><leader>l :G pull<cr>
nmap <leader><leader>p :G push<cr>
nmap <leader><leader>c :G commit<cr>

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": ["ruby", "php"],
    \ "passive_filetypes": ["python", "tex", "java"] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'.config/nvim/plugged/ultisnips']
let g:UltiSnipsSnippetDir=[$HOME.'.config/nvim/plugged/ultisnips']
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
