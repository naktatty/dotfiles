"---------------------------------------------------------------------------
" �t�H���g�ݒ�:
"
if has('win32')
  " Windows�p
  set guifont=KonatuTohaba:h10:cSHIFTJIS
  " �s�Ԋu�̐ݒ�
  set linespace=1
  " �ꕔ��UCS�����̕��������v�����Č��߂�
  if has('kaoriya')
    set ambiwidth=auto
  endif
elseif has('mac')
  set guifont=Osaka�|����:h14
elseif has('xfontset')
  " UNIX�p (xfontset���g�p)
  set guifontset=a14,r14,k14
endif


"---------------------------------------------------------------------------
" �E�C���h�E�Ɋւ���ݒ�:
"
" �E�C���h�E�̕�
set columns=100
" �E�C���h�E�̍���
set lines=60
" �R�}���h���C���̍���(GUI�g�p��)
set cmdheight=1
"
" �F�ݒ�Ƃ��� desert���g�p(�R���\�[��vim�g�p����vimrc��ҏW���邱��) 
colorscheme desert 
" tab�̕\���F��ݒ�(�R���\�[��vim�g�p����vimrc��ҏW���邱��) 
highlight SpecialKey guifg=grey30
" eol�̕\���F��ݒ�(�R���\�[��vim�g�p����vimrc��ҏW���邱��) 
highlight clear NonText
highlight NonText guifg=grey30


" ���̃I�v�V�����́A���^�u�y�[�W�̃��x����\�����邩���w�肷��B
"                0: �\�����Ȃ�
"                1: 2�ȏ�̃^�u�y�[�W������Ƃ��̂ݕ\��
"                2: ��ɕ\��
set showtabline=1

" Windows�̃N���b�v�{�[�h�����L����
set clipboard+=unnamed

" �c�[���o�[���폜
set guioptions-=T
" ���j���[���폜
set guioptions-=m
" �E�X�N���[���o�[���폜
set guioptions-=r

