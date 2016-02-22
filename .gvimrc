"---------------------------------------------------------------------------
" フォント設定:
"
if has('win32')
  " Windows用
  set guifont=KonatuTohaba:h10:cSHIFTJIS
  " 行間隔の設定
  set linespace=1
  " 一部のUCS文字の幅を自動計測して決める
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka－等幅:h14
elseif has('xfontset')
  " UNIX用 (xfontsetを使用)
  set guifontset=a14,r14,k14
endif


"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=100
" ウインドウの高さ
set lines=60
" コマンドラインの高さ(GUI使用時)
set cmdheight=1
"
" 色設定として desertを使用(コンソールvim使用時はvimrcを編集すること) 
colorscheme desert 
" tabの表示色を設定(コンソールvim使用時はvimrcを編集すること) 
highlight SpecialKey guifg=grey30
" eolの表示色を設定(コンソールvim使用時はvimrcを編集すること) 
highlight clear NonText
highlight NonText guifg=grey30


" このオプションは、いつタブページのラベルを表示するかを指定する。
"                0: 表示しない
"                1: 2個以上のタブページがあるときのみ表示
"                2: 常に表示
set showtabline=1

" Windowsのクリップボードを共有する
set clipboard+=unnamed

" ツールバーを削除
set guioptions-=T
" メニューを削除
set guioptions-=m
" 右スクロールバーを削除
set guioptions-=r

