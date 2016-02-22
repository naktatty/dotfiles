"---------------------------------------------------------------------------
" 検索の挙動に関する設定:
"
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase

"---------------------------------------------------------------------------
" 編集に関する設定:
"
" タブの画面上での幅
set tabstop=4
" 挿入されるインデント幅
"set shiftwidth=4
set shiftwidth=2
set softtabstop=2
" タブをスペースに展開しない (expandtab:展開する)
"set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
set smartindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set nowrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキストの自動折り返しをOFF
set formatoptions-=t

"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を表示 
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (nolist:非表示)
set list
" どの文字でタブや改行を表示するかを設定
set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返さずに表示 (wrap:折り返す)
set nowrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=1
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" 色設定として desertを仕様(Windows用gvim使用時はgvimrcを編集すること) 
colorscheme desert 
" tabの表示色を設定(Windows用gvim使用時はgvimrcを編集すること) 
highlight SpecialKey guifg=grey50
" eolの表示色を設定(Windows用gvim使用時はgvimrcを編集すること) 
highlight clear NonText
highlight NonText guifg=grey40
" cursor行にアンダーラインを表示する
set cursorline

"---------------------------------------------------------------------------
" プラグイン neobundle.vim に関する設定:
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'Shougo/unite.vim'
"NeoBundle 'Shougo/neosnippet.vim'
call neobundle#end()
filetype plugin indent on


"---------------------------------------------------------------------------
" ファイル操作に関する設定:
"
" スワップファイル(.swpファイル)の出力先
set directory=$HOME/.vim/swap
" スワップファイル(.swpファイル)を作成する
set swapfile
" バックアップファイル(~ファイル)の出力先
set backupdir=$HOME/.vim/backup
"" バックアップファイル(~ファイル)を作成する
set backup
" ファイルの上書きの前にバックアップを作る。オプション 'backup' がオンでない限り、バックアップは上書きに成功した後削除される。（有効:writebackup/無効:nowritebackup）
set writebackup
" viminfoファイルの出力先
set viminfo+=n$HOME/.vim/.viminfo
" アンドゥファイル(.un~)の出力先
set undodir=$HOME/.vim/undo
set writebackup
" プラグインファイルの置き場を追加
set runtimepath+=$HOME/.vim,$HOME/.vim/after

"---------------------------------------------------------------------------
" キーマップ設定:
"
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
" (plugin/taglist.vim) F8でタグリストウインドウの表示/非表示
nnoremap <silent> <F8> :TlistToggle<CR>
" (plugin/taglist.vim) S-F8 で現在のカーソル位置のプロトタイプをバッファに表示
"                       and タグリストウインドウの該当タグをハイライト
nnoremap <silent> <S-F8> :TlistHighlightTag<CR>:TlistShowPrototype<CR>
" (plugin/bufexplorer.vim) C-l でバッファ切り替えウインドウを表示
nnoremap <silent> <C-l> :BufExplorer<CR>

"map <C-F7> :silent exec '!start "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe" /Edit ' . expand("%:p")<CR><CR>

"---------------------------------------------------------------------------
" プラグイン taglist.vim に関する設定:
"
" アクティブなバッファのタグのみ表示する
"let Tlist_Show_One_File=1
" 常にtaglist(タグリストウインドウ非表示でもTlistShowPrototypeを使用したいため)の処理を行う
"let Tlist_Process_File_Always=1
" アクティブではないファイルのタグは閉じる(畳み込んでおく)
"let Tlist_File_Fold_Auto_Close=1

"---------------------------------------------------------------------------
" その他の設定:

" カレントウインドウにのみアンダーラインを表示する
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

" ファイルタイプ識別追加
au BufRead,BufNewFile *.inc	set filetype=cpp

" rubyファイルの時のインデントをソフトTAB2にする(念のため自動インデントもON)
autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2 tabstop=2 expandtab autoindent

" BATファイルの時はファイルエンコーディングをcp932、ファイルフォーマットDOS形式とする.
autocmd FileType dosbatch set fileencoding=cp932 fileformat=dos

set textwidth=0
