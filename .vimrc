"---------------------------------------------------------------------------
" �����̋����Ɋւ���ݒ�:
"
" �������ɑ啶���������𖳎� (noignorecase:�������Ȃ�)
set ignorecase
" �啶���������̗������܂܂�Ă���ꍇ�͑啶�������������
set smartcase

"---------------------------------------------------------------------------
" �ҏW�Ɋւ���ݒ�:
"
" �^�u�̉�ʏ�ł̕�
set tabstop=4
" �}�������C���f���g��
"set shiftwidth=4
set shiftwidth=2
set softtabstop=2
" �^�u���X�y�[�X�ɓW�J���Ȃ� (expandtab:�W�J����)
"set noexpandtab
" �����I�ɃC���f���g���� (noautoindent:�C���f���g���Ȃ�)
set autoindent
set smartindent
" �o�b�N�X�y�[�X�ŃC���f���g����s���폜�ł���悤�ɂ���
set backspace=2
" �������Ƀt�@�C���̍Ō�܂ōs������ŏ��ɖ߂� (nowrapscan:�߂�Ȃ�)
set nowrapscan
" ���ʓ��͎��ɑΉ����銇�ʂ�\�� (noshowmatch:�\�����Ȃ�)
set showmatch
" �R�}���h���C���⊮����Ƃ��ɋ������ꂽ���̂��g��(�Q�� :help wildmenu)
set wildmenu
" �e�L�X�g�̎����܂�Ԃ���OFF
set formatoptions-=t

"---------------------------------------------------------------------------
" GUI�ŗL�ł͂Ȃ���ʕ\���̐ݒ�:
"
" �s�ԍ���\�� 
set number
" ���[���[��\�� (noruler:��\��)
set ruler
" �^�u����s��\�� (nolist:��\��)
set list
" �ǂ̕����Ń^�u����s��\�����邩��ݒ�
set listchars=tab:>-,extends:<,trail:-,eol:<
" �����s��܂�Ԃ����ɕ\�� (wrap:�܂�Ԃ�)
set nowrap
" ��ɃX�e�[�^�X�s��\�� (�ڍׂ�:he laststatus)
set laststatus=2
" �R�}���h���C���̍��� (Windows�pgvim�g�p����gvimrc��ҏW���邱��)
set cmdheight=1
" �R�}���h���X�e�[�^�X�s�ɕ\��
set showcmd
" �^�C�g����\��
set title
" �F�ݒ�Ƃ��� desert���d�l(Windows�pgvim�g�p����gvimrc��ҏW���邱��) 
colorscheme desert 
" tab�̕\���F��ݒ�(Windows�pgvim�g�p����gvimrc��ҏW���邱��) 
highlight SpecialKey guifg=grey50
" eol�̕\���F��ݒ�(Windows�pgvim�g�p����gvimrc��ҏW���邱��) 
highlight clear NonText
highlight NonText guifg=grey40
" cursor�s�ɃA���_�[���C����\������
set cursorline

"---------------------------------------------------------------------------
" �v���O�C�� neobundle.vim �Ɋւ���ݒ�:
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
" �t�@�C������Ɋւ���ݒ�:
"
" �X���b�v�t�@�C��(.swp�t�@�C��)�̏o�͐�
set directory=$HOME/.vim/swap
" �X���b�v�t�@�C��(.swp�t�@�C��)���쐬����
set swapfile
" �o�b�N�A�b�v�t�@�C��(~�t�@�C��)�̏o�͐�
set backupdir=$HOME/.vim/backup
"" �o�b�N�A�b�v�t�@�C��(~�t�@�C��)���쐬����
set backup
" �t�@�C���̏㏑���̑O�Ƀo�b�N�A�b�v�����B�I�v�V���� 'backup' ���I���łȂ�����A�o�b�N�A�b�v�͏㏑���ɐ���������폜�����B�i�L��:writebackup/����:nowritebackup�j
set writebackup
" viminfo�t�@�C���̏o�͐�
set viminfo+=n$HOME/.vim/.viminfo
" �A���h�D�t�@�C��(.un~)�̏o�͐�
set undodir=$HOME/.vim/undo
set writebackup
" �v���O�C���t�@�C���̒u�����ǉ�
set runtimepath+=$HOME/.vim,$HOME/.vim/after

"---------------------------------------------------------------------------
" �L�[�}�b�v�ݒ�:
"
nmap <C-S-tab> :tabprevious<cr>
nmap <C-tab> :tabnext<cr>
map <C-S-tab> :tabprevious<cr>
map <C-tab> :tabnext<cr>
imap <C-S-tab> <ESC>:tabprevious<cr>i
imap <C-tab> <ESC>:tabnext<cr>i
" (plugin/taglist.vim) F8�Ń^�O���X�g�E�C���h�E�̕\��/��\��
nnoremap <silent> <F8> :TlistToggle<CR>
" (plugin/taglist.vim) S-F8 �Ō��݂̃J�[�\���ʒu�̃v���g�^�C�v���o�b�t�@�ɕ\��
"                       and �^�O���X�g�E�C���h�E�̊Y���^�O���n�C���C�g
nnoremap <silent> <S-F8> :TlistHighlightTag<CR>:TlistShowPrototype<CR>
" (plugin/bufexplorer.vim) C-l �Ńo�b�t�@�؂�ւ��E�C���h�E��\��
nnoremap <silent> <C-l> :BufExplorer<CR>

"map <C-F7> :silent exec '!start "C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe" /Edit ' . expand("%:p")<CR><CR>

"---------------------------------------------------------------------------
" �v���O�C�� taglist.vim �Ɋւ���ݒ�:
"
" �A�N�e�B�u�ȃo�b�t�@�̃^�O�̂ݕ\������
"let Tlist_Show_One_File=1
" ���taglist(�^�O���X�g�E�C���h�E��\���ł�TlistShowPrototype���g�p����������)�̏������s��
"let Tlist_Process_File_Always=1
" �A�N�e�B�u�ł͂Ȃ��t�@�C���̃^�O�͕���(��ݍ���ł���)
"let Tlist_File_Fold_Auto_Close=1

"---------------------------------------------------------------------------
" ���̑��̐ݒ�:

" �J�����g�E�C���h�E�ɂ̂݃A���_�[���C����\������
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

" �t�@�C���^�C�v���ʒǉ�
au BufRead,BufNewFile *.inc	set filetype=cpp

" ruby�t�@�C���̎��̃C���f���g���\�t�gTAB2�ɂ���(�O�̂��ߎ����C���f���g��ON)
autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2 tabstop=2 expandtab autoindent

" BAT�t�@�C���̎��̓t�@�C���G���R�[�f�B���O��cp932�A�t�@�C���t�H�[�}�b�gDOS�`���Ƃ���.
autocmd FileType dosbatch set fileencoding=cp932 fileformat=dos

set textwidth=0
