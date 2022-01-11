call plug#begin()

Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'asvetliakov/vim-easymotion'
Plug 'justinmk/vim-sneak'

call plug#end()

let mapleader = " "
map <Leader> <Plug>(easymotion-prefix)

map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

let g:EasyMotion_keys = "asdghklqwertyuiopzxcvbnmfjASDGHKLQWERTYUIOPZXCVBNMFJ"
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

autocmd User targets#mappings#user call targets#mappings#extend({
  \ 'b': {'pair': [{'o':'(', 'c':')'}]},
  \ 'r': {'pair': [{'o':'[', 'c':']'}]},
  \ 'v': {'pair': [{'o':'<', 'c':'>'}]},
  \ })
