" Description: Keymaps

nnoremap <S-C-p> "2p
" Delete without yank
nnoremap <leader>d "_d
nnoremap x "_x

" Increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>

" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Save with root permission
command! W w !sudo tee > /dev/null %

" Search for selected text, forwards or backwards.
"vnoremap <silent> * :<C-U>
"  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
"  \gvy/<C-R><C-R>=substitute(
"  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"  \gV:call setreg('"', old_reg, old_regtype)<CR>
"vnoremap <silent> # :<C-U>
"  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
"  \gvy?<C-R><C-R>=substitute(
"  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
"  \gV:call setreg('"', old_reg, old_regtype)<CR>

"-----------------------------
" Tabs

" Open current directory
nmap te :tabedit 
"nmap <S-Tab> :tabprev<Return>
"nmap <Tab> :tabnext<Return>

"------------------------------
" Windows

" Split window
"nmap ss :split<Return><C-w>w
"nmap sv :vsplit<Return><C-w>w
" Move window
"nmap <Space> <C-w>w
map q<left> <C-w>h
map q<up> <C-w>k
map q<down> <C-w>j
map q<right> <C-w>l
map qj <C-w>j
map qk <C-w>k
map ql <C-w>l
map qh <C-w>h
"" Resize window
"nmap <C-w><left> <C-w><
"nmap <C-w><right> <C-w>>
"nmap <C-w><up> <C-w>+
"nmap <C-w><down> <C-w>-

"let mapleader=" "
map <space>+ :vertical resize +5<CR>
map <space>- :vertical resize -6<CR>
nmap <space>w :w!<CR>
nmap <space>q :q<CR>
:verbose imap <tab>
map <space>p :GitGutterPreviewHunk<CR>
map <space>j :GitGutterNextHunk<CR>
map <space>k :GitGutterPrevHunk<CR>
map <space>u :GitGutterUndoHunk<CR>
map <space>i :bnext<CR>
map <space>o :bprev<CR>

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

"map  <space>n <Plug>NERDTreeTabsToggle<CR>
map  <space>2 :tabn<CR>
map  <space>1 :tabp<CR>
map  <space>3 :tabnew<CR>
nmap <space>nt :NERDTreeFind<CR>

let g:user_emmet_install_global = 0
let g:user_emmet_mode='n'
let g:user_emmet_leader_key = ','
autocmd FileType html,css,svelte EmmetInstall

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1

"autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let NERDTreeShowLineNumbers=1
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

let s:colors = {
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
\ }
 
autocmd FileType python map <buffer> <space>ep <esc><CR>:exec '!python3' shellescape(@%, 1)<CR>

