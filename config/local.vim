" Adding custom display
:set number
:set ruler
:set colorcolumn=90
:set cursorline

" Setting tabulations
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set backspace=indent,eol,start

" Adding useful mapping
map 0 ^

" Adding FZF shortcuts
nnoremap <silent><LocalLeader>f :Files<CR>
nnoremap <silent><LocalLeader>d :Files ~<CR>
nnoremap <silent><LocalLeader>h :History<CR>

" Adding tabs shortcuts
nnoremap <silent><LocalLeader>t :tabnew<CR>
nnoremap <silent>tk :tabl<CR>
nnoremap <silent>tj :tabr<CR>
nnoremap <silent>tl :tabn<CR>
nnoremap <silent>th :tabp<CR>

" Adding terminal shortcuts (split + terminal)
tnoremap <Esc> <C-\><C-n>

" Opening the terminal in insert mode
if has('nvim')
	autocmd TermOpen term://* startinsert
endif

" Window split + open terminal
command! -nargs=* ST split | terminal <args>
command! -nargs=* VST vsplit | terminal <args>

nnoremap <silent>tsg :ST<CR>
nnoremap <silent>tsv :VST<CR>

" Adding Prettier linter for frontend files
let g:prettier#autoformat = 0
let g:prettier#config#parser = 'babylon'
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
