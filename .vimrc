" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" Always have GitGutter run on save
autocmd BufWritePost * GitGutter

" These are override default Vim motions!
nnoremap ; :Buffers<CR>
nnoremap f :Files<CR>
nnoremap s :Rg<CR>

" minimum deoplete settings
if has('nvim')
    let g:deoplete#enable_at_startup = 1
endif
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
call deoplete#custom#option('omni_patterns', {
\ 'go': '[^. *\t]\.\w*',
\})

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


let g:LanguageClient_serverCommands = {
    \ 'go': ['~/go/bin/gopls']
    \ }

syntax on
syntax enable

colorscheme nord

set number
set hidden " Required for specific actions that require multiple buffers
set mouse+=a " noob mode

set expandtab ts=4 sw=4 ai

" vim-go stuff
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_structs = 1
let g:go_auto_sameids = 1
let g:go_addtags_transform = "camelcase"

" Dependencies will be added on save
let g:go_fmt_command = "goimports"


" Ale settings
let g:ale_sign_column_always = 1
" Don't use the sign column/gutter for ALE
let g:ale_set_signs = 0
" Lint always in Normal Mode
let g:ale_lint_on_text_changed = 'normal'
" Lint when leaving Insert Mode but don't lint when in Insert Mode 
let g:ale_lint_on_insert_leave = 1
" Set ALE's 200ms delay to zero
let g:ale_lint_delay = 0
