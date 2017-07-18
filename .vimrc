

execute pathogen#infect()

" Remap ':' to ';'
nnoremap ; :

let g:airline_theme='papercolor'
set laststatus=2

" let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

set number
set relativenumber

" let g:bufferline_echo = 1 
" let g:bufferline_show_buffer = 1
" let g:bufferline_modified = '+'
" let g:bufferline_active_buffer_left = '['  
" let g:bufferline_active_buffer_right = ']'
" let g:bufferline_show_bufnr = 1
" let g:bufferline_active_highlight = 'StatusLine'
" let g:bufferline_inactive_highlight = 'StatusLineNC'
" let g:bufferline_fname_mod = ':t'
 
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = 'airline'
let g:tmuxline_powerline_separators = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

syntax on


filetype plugin indent on
filetype plugin on


" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"





" Invoking content from Damian Conway's work
"
set incsearch 
set ignorecase 
set smartcase

set hlsearch
highlight 	Search 		ctermbg=Cyan ctermfg=White



runtime plugin/_autodoc.vim


"====[ Work out what kind of file this is ]========

filetype plugin indent on

autocmd BufNewFile,BufRead  *.t                     setfiletype perl
autocmd BufNewFile,BufRead  *.itn                   setfiletype itn


"=====[ Comments are important ]==================

highlight Comment term=bold ctermfg=white

"=====[ Visual Block Drag Keymappings ]==================
runtime plugin/dragvisuals.vim                                
                                                              
vmap  <expr>  <LEFT>   DVB_Drag('left')                       
vmap  <expr>  <RIGHT>  DVB_Drag('right')                      
vmap  <expr>  <DOWN>   DVB_Drag('down')                       
vmap  <expr>  <UP>     DVB_Drag('up')                         
vmap  <expr>  D        DVB_Duplicate()                        
                                                              
" Remove any introduced trailing whitespace after moving...   
let g:DVB_TrimWS = 1                                          
