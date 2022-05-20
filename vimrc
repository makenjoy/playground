" AIR-LINES plugin settings
set laststatus=2
set showtabline=0
set noshowmode
"let g:airline_powerline_fonts = 1
"let g:airline_theme='vim-ctrlspace'
"let g:Powerline_symbols = 'fancy'
let &t_Co=256

" SYNTASTIC plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set hidden

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

syntax enable
syntax on
filetype on
set nocompatible
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
" set numberwidth=6
set nowrapscan
set ruler
set nobackup
set cindent
set autoindent
set smartindent
set incsearch
if has('gui_running')
	set background=light
else
	set background=dark
endif
set backspace=eol,start,indent
set history=1000
set hlsearch
"set ignorecase
set showmatch
set textwidth=80
set wrap
set nocp
set splitright
"colorscheme solarized
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,euckr,latin1
"set guifont=Consolas:h11:cANSI:b

" # Windows Size
" set columns=86
" set lines= ?
"
map q <Nop>
map Q <Nop>
map <C-h> i<C-h><RIGHT><ESC>
map <C-j> i<C-j><ESC>
map <C-l> i<SPACE><RIGHT><ESC>

map <F2> <ESC>:bn<CR>
imap <F2> <ESC>:bn<CR>
map <F1> <ESC>:bp<CR>
imap <F1> <ESC>:bp<CR>

" ### Bundle Settings ###
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
" my bundles
Plugin 'The-NERD-tree'
Plugin 'minibufexplorerpp'
Plugin 'ctags.vim'
Plugin 'cscope_plus.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Search results for: syntastic

"__________________________________________________________________________


filetype on	" 파일의 종류를 자동으로 인식하여 구문 강조
syntax on	" 자동 문법 강조
incsearch
colorscheme evening	" syntax color 스킴 설정
history=1000	" ex명령어 저장갯수
set hlsearch	" 검색어 강조 기능설정
set ignorecase
set showmatch
set nocompatible	" Vim 디폴트 기능들을 사용함 "
set backspace=2		" 삽입 모드에서 백스페이스를 계속 허용 "
set backspace=eol,start,indent
set nowrap	" 자동 줄바꿈 안함  "
set nowrapscan	" 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음 "
set ignorecase	" 찾기에서 대/소문자를 구별하지 않음 "
set incsearch	" 점진적으로 찾기  "
set nobackup	" 백업파일을 만들지 않음 "
set nojoinspaces	" J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔 "
set shiftwidth=4	" 자동 들여쓰기 간격 "
set keywordprg=ydic	" K를 눌렀을 때 실행할 명령어 "
set showcmd	" (부분적인)명령어를 상태라인에 보여줌 "
set showmatch	" 매치되는 괄호의 반대쪽을 보여줌 "
set autowrite	" :next나  :make 같은 명령를 입력하면 자동으로 저장 "
set linespace=3		" 줄간격 "
set title	" 타이틀바에 현재 편집중인 파일을 표시 "
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\	" 다중 문서 작업을 위한 Status 줄 "
set tags+=./tags	" add current directory's generated tags file to available tags "
set expandtap	" 탭 문자를 공백문자로 변환합니다.
set incsearch	" 키워드를 입력할때 검색하는 점진 검색 사용합니다.
set background= [Color]	" 배경색을 사용합니다.
set hisearch	" 검색어 강조 기능 사용합니다.
set ignorecase	" 검색,편집 치환시에 대소문자 구분하지 않습니다.
set tabstop=4	" Tab를 눌렀을때 8칸 대신 4칸 이동하도록 함

set shiftwidth=4	" 자동 들여쓰기 할 때 4칸 들여쓰기 함
set number (nu)		" 라인마다 번호를 표시
set softtabstop=2
set visualbell		" ’BEEP’ 소리대신 화면 깜빡이기
set nowrapscan		" 검색 시 문서 끝에서 다시 처음으로 돌아가지 않음
set ruler	" 우측 하단에 라인 및 컬럼 위치 표시및 전체 문서의 위치를 %로 표시
set nobackup	" 백업 파일 만들지 않음
set cindent	" C프로그래밍 시 자동으로 들여쓰기 함
set autoindent		" 자동으로 들여쓰기
set smartindent         " 자동 들여쓰기 "
set enc=euc-kr
set textwidth=80	" 만약 80번째 글자를 넘기면
set wrap	" 자동으로 다음줄로 넘어감
set t_ti= t_te=		" 터미널 환경에서 vi를 종료 할때, 편집 하던 화면이 그대로 남도록 함
set ff=unix (dos, mac)	" 라인변경 문자를 변경합니다.
set key=<password>	" 문서를 암호화 시키고, 암호를 풀수 있음
set ic (ignorecase)	" 검색패턴 사용시 대소문자를 구별 하지 않음
set wam		" 저장하지 않고 종료시에 경고메시지 출력
set sm (showmatch)	" 가로를 닫을때 열기 괄호를 보여줌
set nocp	" 오리지널 Vi 와의 호환성을 없애고, Vim 만의 기능들을 쓸 수 있게 함
set lpl		" 프로그램 시작시 플러그인 로드
set fileencoding=euc-kr		" 저장시 인코딩타입
set fencs=ucs-bom,utf-8,euckr,latin1	" 읽을때 인식할수있는 인코딩
set formatoptions+=r	" 자동 주석 기호 붙이기 ON
set formatoptions-=r	" 자동 주석 기호 붙이기 OFF
set nocompatible
set backspace=indent,eol,start " Backspace 사용에 이전 줄과 연결
set backup	" Backup 활성화
set backupdir=~/.vim/backup
set history=50	" 명령어 기록 수
set novisualbell	" 화면 깜빡임 사용안함
set noerrorbells	" 오류음 사용안함
set lazyredraw	" 매크로 실행중 화면을 다시 그리지 않음
set loadplugins	" 프로그램 시작시에 플러그인 로딩
set encoding=utf-8	" encoding 설정
set fileencodings=utf-8,cp949,default,latin1
set termencoding=utf-8
set printencoding=utf-8 " 인쇄 encoding 옵션
set printmbcharset=ISO10646
set printmbfont=r:NanumGothiccoding,c:yes,a:yes
set paste	" 붙여넣기시 계단 현상 제거
set foldmethod=manual	" 코드 생략은 파일형식에서 설정
set autoindent	" 자동 들여쓰기 사용
set wrapscan	" 검색시, 파일 끝에서 되돌리기
set nojoinspaces	" 줄 연결은 공백을 하나만 지정함
set tabstop=4	" tab 간격
set expandtab
set softtabstop=4
set shiftwidth=4	" 자동 들여쓰기 간격
set showmatch	" 괄호 반전
set autowrite	" 자동저장
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " 공백문자 표시
set list
set dip=iwhite	" 파일비교시 공백만 무시
set textwidth=0	" 텍스트 입력의 width 제한은 없음


**************************************************************************


" GUI 설정
if has("gui_running")
    " 글꼴 설정
    if has("win32")
        set guifont=Consolas:h9:cHANGEUL
    elseif has("unix")
        set guifont=Consolas\ 9 " 글꼴 설정
        set guifontwide=NanumGothicCoding\ 9
    endif
    set printfont=NanumGothicCoding\ 9

    " 메뉴 설정
    " set go-=m " 메뉴
    " set go-=T " 툴바
    set go-=l " 스크롤바
    set go-=L
    set go-=r
    set go-=R
    set go-=b

    " 마우스 설정
    set mouse=n " 마우스 이동제한
    set nomousefocus
    set mousemodel=popup " 마우스 동작은 popup

    " 창 크기 설정
    set lines=40
    set co=90
endif

" 이전 편집 부분에서 다시 열기
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif


" ########## Syntax ##########

" highlight를 표시함
if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif

highlight clear
highlight Normal     guifg=Gray80 guibg=Black ctermfg=White
highlight Search     guifg=LightRed guibg=Black gui=reverse ctermfg=LightRed ctermbg=DarkGray cterm=reverse
highlight Visual     guifg=Gray25 guibg=DarkGray ctermfg=LightGray ctermbg=DarkGray
highlight Cursor     guifg=Black guibg=Green ctermfg=Black ctermbg=Green
highlight CursorIM   guifg=Black guibg=Yellow ctermfg=Black ctermbg=Yellow
highlight Special    guifg=Orange ctermfg=Brown
highlight Comment    guifg=Green guibg=Black ctermfg=DarkGreen gui=italic
highlight StatusLine guifg=White guibg=Blue gui=NONE ctermfg=White ctermbg=Blue
highlight Statement  guifg=Yellow gui=NONE ctermfg=Yellow cterm=NONE
highlight Type       guifg=Cyan gui=NONE ctermfg=Cyan
highlight Structure  guifg=Red  guibg=Black
highlight Constant   guifg=Green guibg=Black ctermfg=Gray
highlight String     guifg=LightMagenta guibg=Black ctermfg=LightMagenta gui=italic
highlight Number     guifg=Magenta ctermfg=Magenta
highlight Identifier guifg=Orange guibg=Black ctermfg=DarkYellow
highlight MatchParen guifg=Black guibg=LightBlue
highlight Folded     guifg=Orange guibg=Black ctermfg=DarkGreen
highlight link IncSearch   Visual
highlight link Character   Constant
highlight link Boolean     Constant
highlight link Float       Number
highlight link typedef     Type
highlight link Operator    Statement
highlight link Keyword     Statement
highlight link Exception   Statement

" ########## Window ##########

set number " 줄번호 표시
set nuw=5
set linespace=0 " 줄간격
set nowrap " 줄바꿈 안함
set ruler " 커서 위치를 표시함
set showcmd " 마지막 라인에 커맨드표시

" Status 모양
highlight User1 term=underline cterm=bold ctermfg=Cyan ctermbg=Blue gui=underline gui=bold guifg=#40ffff guibg=#0000aa
highlight User2 term=underline cterm=underline ctermfg=green gui=underline guifg=#00ff00
highlight User3 term=underline cterm=underline ctermfg=yellow gui=underline guifg=#ffff00
highlight User4 term=underline cterm=underline ctermfg=white gui=underline guifg=#ffffff
highlight User5 ctermfg=cyan
highlight User6 ctermfg=white
set statusline=%4*%<\ %1*[%F]
set statusline+=%4*\ %5*[%{&encoding}, " encoding
set statusline+=%{&fileformat}]%m " file format
set statusline+=%4*%=\ %6*%y%4*\ %3*%l%4*/%L,\ %3*%c%4*\ \<\ %2*%P%4*\ \>
set laststatus=2


" ########## Short Cuts ##########

" Shift+Enter로 아래줄로 커서 넘기기 기능
map <S-CR> <ESC>o
map! <S-CR> <ESC>o
"현재 줄의 마지막에 이어 쓰기
map! <C-TAB> <S-CR><ESC>i<BACKSPACE>
" 영역이 지정된 상태에서 Tab과 Shift+Tab으로 들여쓰기/내어쓰기를 할 수 있도록 함
.
" map <Tab> >gv
" map <S-Tab> <gv
" Tab 열기, 이동
map <F2> :tabnew<CR>
map <F4> :w<CR>
map <C-h> gT
map <C-l> gt
" 코드 폴딩
" map <C-k> zc
" map <C-j> zo
" Shell 호출
map <F9> :shell<CR>

" Trinity의 설정
"" Open and close all the three plugins on the same time
nmap <F8> :TrinityToggleAll<CR>
" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 8
" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 100
" // Set "Enter" key to jump into the exact definition context
" let g:SrcExpl_jumpKey = "<ENTER>"
" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"
" // In order to Avoid conflicts, the Source Explorer should know what plugins
" // are using buffers. And you need add their bufname into the list below
" // according to the command ":buffers!"
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]
" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 1
" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to
" //  create/update a tags file
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
" // Set "<F12>" key for updating the tags file artificially
let g:SrcExpl_updateTagsKey = "<F12>"

" ########## File Type ##########
filetype plugin on " 파일 종류 자동 인식
filetype indent on

if has("autocmd")
    autocmd FileType * map <F12> :w<CR>

    " 자동완성
    autocmd FileType * inoremap { {}<LEFT>
    autocmd FileType * inoremap [ []<LEFT>
    autocmd FileType * inoremap ( ()<LEFT>
    autocmd FileType * inoremap " ""<LEFT>
    autocmd FileType * inoremap ' ''<LEFT>

    " Python 설정
    autocmd BufNewFile,BufRead *.py setfiletype python
    autocmd BufNewFile *.py 0r ~/.vim/templetes/skeleton.py
    autocmd FileType python set syntax=python
    autocmd FileType python set autoindent
    autocmd FileType python set foldmethod=indent
    autocmd FileType python       set complete+=k~/.vim/syntax/python.vim isk+=.,(
    autocmd FileType python noremap <F12> :w<CR>:!python %<CR>
    autocmd FileType python noremap <C-F12> :w<CR>:!python %

    " R 설정
    autocmd BufNewFile,BufRead *.R setfiletype r
    autocmd BufNewFile *.R         0r ~/.vim/templetes/skeleton.R
    autocmd FileType r set syntax=r
    autocmd FileType r set autoindent
    autocmd FileType r set foldmethod=indent
    autocmd BufNewFile,BufRead *.R  inoremap { {<CR>}<C-O>O

    " Graphviz 설정
    autocmd BufNewFile,BufRead *.dot set autoindent
    autocmd BufNewFile         *.dot 0r ~/.vim/templetes/skeleton.dot
    autocmd BufNewFile,BufRead *.dot noremap <F12> :w<CR>:!dot -Tpng % -O<CR>:!eog %.png<CR>
endif


______________________________________________________
autocomplpop

function! InsertTabWrapper()
let col = col('.') - 1
if !col || getline('.')[col-1]!~'\k'
return "\<TAB>"
else
if pumvisible()
return "\<C-N>"
else
return "\<C-N>\<C-P>"
end
endif
endfunction

inoremap <tab> <c-r>=InsertTabWrapper()<cr>

hi Pmenu ctermbg=blue
hi PmenuSel ctermbg=yellow ctermfg=black
hi PmenuSbar ctermbg=blue
_______________________________________________________

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 인클루드의 Vim 설정 파일
" 마지막 수정: 2006-01-17 04:29:44 KST
" $Id: Site_2fVim_2fDocuments_2fvimrc_5fyurihan,v 1.4 2009/12/08 02:31:38 root Exp root $
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"이후 수정 - YuriHan
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 프로그램 기본 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 오리지널 Vi 와의 호환성을 없애고, Vim 만의 기능들을 쓸 수 있게 함.
set nocp

" 모든 옵션을 원래대로 복원
set all&

" 명령어 기록을 남길 갯수 지정
set hi=100

" 백스페이스 사용
set bs=indent,eol,start

" 인코딩 설정
" 문서를 읽을 때 BOM 을 자동으로 제거하려면, fencs 맨 앞에 ucs-bom 를 추가하세요.
"let &tenc=&enc
"set enc=utf-8
set fenc=cp949
set fencs=utf-8,cp949,cp932,euc-jp,shift-jis,big5,ucs-2le,latin1


source $VIMRUNTIME/mswin.vim

" 홈 디렉토리가 존재할 때에만 사용할 수 있는 기능들
if exists("$HOME")

" 홈 디렉토리를 구한다.
" 특정 시스템에서는 홈 디렉토리 경로 끝에 / 또는 \ 문자가
" 붙어 있기 때문에, 그것들을 제거한다.
    let s:home_dir = $HOME
    let s:temp = strpart(s:home_dir,strlen(s:home_dir)-1,1)
    if s:temp == "/" || s:temp == "\\"
        let s:home_dir = strpart(s:home_dir,0,strlen(s:home_dir)-1)
    endif

" 경로 설정
if has("win32")
    let s:dir_tmp = s:home_dir."/_vim/tmp"
    let s:dir_backup = s:home_dir."/_vim/backup"
else
    let s:dir_tmp = s:home_dir."/.vim/tmp"
    let s:dir_backup = s:home_dir."/.vim/backup"
endif


set exrc
" 임시 디렉토리 설정
"    if isdirectory(s:dir_tmp)
"        set swf
"        let &dir = s:dir_tmp
"    else
"        set noswf
"        set dir=.
"    endif

" 백업 디렉토리 설정
"    if isdirectory(s:dir_backup)
"        set bk
"        let &bdir = s:dir_backup
"        set bex=.bak
"    else
"        set nobk
"    endif

endif

" 파일 찾기 경로 설정



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 플러그인 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist 설정
"let Tlist_Ctags_Cmd = 'C:\Progra~1\Vim\Vim71\ctags.exe'
"let Tlist_Auto_Open = 1
"let Tlist_Auto_Update = 1
"let Tlist_WinWidth = 28

" minibufexpl 설정
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
cabbr b Bs


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편집 기능 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 커서의 위치를 항상 보이게 함.
set ru

" 완성중인 명령을 표시
set sc

" 줄 번호 표시
set nu

" 줄 번호 표시 너비 설정
set nuw=5

" 탭 크기 설정
set ts=4
set sw=4

" 탭 -> 공백 변환 기능 (사용 안함)
set noet
set sts=0

" 자동 줄바꿈 안함
set nowrap

" 마지막 편집 위치 복원 기능
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\   exe "norm g`\"" |
\ endif

" gVim 을 사용중일 경우 클립보드를 unnamed 레지스터로 매핑
" xterm_clipboard 기능이 있을 때에도 매핑 가능
if has("gui_running") || has("xterm_clipboard")
    set cb=unnamed
endif

" magic 기능 사용
set magic

" 여러 가지 이동 동작시 줄의 시작으로 자동 이동
set sol

" 비주얼 모드에서의 동작 설정
set sel=exclusive

" SHIFT 키로 선택 영역을 만드는 것을 허용
" 영역 상태에서 Ctrl+F,B 로 이동하면 영역이 해제되어 버려서 해제
set km=startsel,stopsel

" 가운데 마우스 버튼으로 붙여넣기 하는 것을 무효화한다.
map <MiddleMouse> <Nop>
map! <MiddleMouse> <Nop>

" 괄호짝 찾기 기능에 사용자 괄호 종류를 더한다.
set mps+=<:>

" 새로 추가된 괄호의 짝을 보여주는 기능
"set sm

" Insert 키로 paste 상태와 nopaste 상태를 전환한다.
" 함수 방식으로 바꾸었다. 자세한 것은 아래로~
"set pt=<Ins>

" 키 입력 대기시간을 무제한으로, 그러나 key codes 에 대해서는 예외
set noto ttimeout

" 키 입력 대기시간 설정 (milliseconds) (ttm 을 음수로 설정하면 tm 을 따라감)
set tm=3000 ttm=100

" 영역이 지정된 상태에서 Tab 과 Shift-Tab 으로 들여쓰기/내어쓰기를 할 수 있도록 함.
vmap <Tab> >gv
vmap <S-Tab> <gv

" 입력이 중단된 후 얼마 후에 swap 파일을 쓸 것인지와
" CursorHold 이벤트의 대기시간을 설정 (milliseconds)
set ut=5000

" 몇 글자를 입력받으면 swap 파일을 쓸 것인지 설정
set uc=100


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 검색 기능 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 검색어 강조 기능
set hls

" 검색시 파일 끝에서 처음으로 되돌리기 안함
set nows

" 검색시 대소문자를 구별하지 않음
set ic

" 똑똑한 대소문자 구별 기능 사용
set scs


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 모양 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GUI 이면, 시작시 크기, 위치 설정
"if has("gui_running")
"    set lines=100
"    set co=171
"    winp 4 4
"endif

" 시작시 전체화면으로 설정
" 이제 이것도 귀찮아졌다...!
if has("win32")
    au GUIEnter * simalt ~x
endif

" 추적 수준을 최대로
set report=0

"자동줄바꿈
set wrap

" 항상 status 라인을 표시하도록 함.
set ls=2

" 폰트 설정
"if has("gui_running")
"    if has("win32")
"        set gfn=굴림체:h9:cHANGEUL
"        set gfn=GulimChe:h9:cHANGEUL
"    elseif has("unix")
"        set gfn=monospace\ 9
"    endif
"    set gfn=Jung9\ 9
"    set gfn=Fixedsys:h12:cHANGEUL
"endif

" 줄 간격 설정
set lsp=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filetype 기능 & Syntax Highlighting 기능
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 파일의 종류를 자동으로 인식
filet plugin indent on

" 몇몇 커스텀 확장자들에게 파일 형식 설정
"au BufRead,BufNewFile *.dic setl ft=php

" 파일 형식에 따른 Syntax Highlighting 기능을 켠다
sy enable


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" indent 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 자동 들여쓰기 사용 안함
"set noai

" 똑똑한 들여쓰기 사용 안함
"set nosi

" 내장된 indent 파일이 없어서 C indent 를 사용하는 경우
au FileType ,jsp setl cin

" 각 언어의 표준 indent 를 사용하는 경우
" 수동 추가하기가 귀찮아져서 결국 자동 인식으로 바꿨다.
"au FileType c,cpp,html,vim,java,sh,python,xml,perl,xf86conf,conf,apache
"\ if expand("<amatch>") != "" |
"\   if exists("b:did_indent") |
"\        unlet b:did_indent |
"\   endif |
"\ runtime! indent/<amatch>.vim |
"\ endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 컬러 스킴 (:colo inkpot)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim color file
" Dark (grey on black) color scheme based on on a popular torte config.
" Maintainer: Sergei Matusevich <motus@motus.kiev.ua>
" ICQ: 31114346 Yahoo: motus2
" http://motus.kiev.ua/motus2/Files/motus.vim
" Last Change: 3 November 2005
" Orinal torte screme maintainer: Thorsten Maerz <info@netztorte.de>
" Licence: Public Domain

" INSTALLATION: copy this file to ~/.vim/colors/ directory
" and add "colorscheme motus" to your ~/.vimrc file

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
"colorscheme default
let g:colors_name = "motus"

" hardcoded colors :
" GUI Comment : #80a0ff = Light blue

" GUI
highlight Normal     guifg=Grey80    guibg=Black
highlight Search     guifg=Grey guibg=DarkBlue
highlight Visual     guifg=Black guibg=DarkGrey gui=NONE
highlight Search     guifg=White guibg=Red gui=NONE
" highlight Cursor     guifg=Black    guibg=Green    gui=bold
highlight Special    guifg=Orange
highlight Comment    guifg=#00a7a7
highlight Statement  guifg=Yellow            gui=NONE
highlight Type                        gui=NONE
highlight Pmenu        guifg=Black guibg=darkGray    gui=None
highlight PmenuSel        guibg=red guifg=white    gui=None

highlight VertSplit    gui=bold guifg=Grey25    guibg=Black
highlight StatusLine   gui=bold guifg=White     guibg=Grey25
highlight StatusLineNC gui=NONE guifg=LightGrey guibg=Grey25

highlight FoldColumn     gui=bold guifg=White guibg=Black
highlight Folded            guifg=#80a0ff guibg=Black

" Console
highlight Normal     ctermfg=LightGrey    ctermbg=Black
highlight Search     ctermfg=Grey    ctermbg=DarkBlue    cterm=NONE
highlight Visual                    cterm=reverse
" highlight Cursor     ctermfg=Black    ctermbg=Green    cterm=bold
highlight Special    ctermfg=Brown
highlight Comment    ctermfg=Blue
highlight Statement  ctermfg=Yellow        cterm=NONE
highlight Type        cterm=NONE

highlight VertSplit        ctermfg=DarkGrey    ctermbg=Black    cterm=bold
highlight StatusLine    ctermfg=White    ctermbg=Grey    cterm=bold
highlight StatusLineNC    ctermfg=Black    ctermbg=Grey    cterm=NONE

highlight FoldColumn    ctermbg=Black    ctermfg=White    cterm=bold


" only for vim 5
if has("unix")
  if v:version<600
    highlight Normal  ctermfg=Grey    ctermbg=Black    cterm=NONE    guifg=Grey80      guibg=Black    gui=NONE
    highlight Search  ctermfg=Black    ctermbg=Red    cterm=bold    guifg=Black       guibg=Red    gui=bold
    highlight Visual  ctermfg=Black    ctermbg=yellow    cterm=bold    guifg=Grey25            gui=bold
    highlight Special ctermfg=LightBlue            cterm=NONE    guifg=LightBlue            gui=NONE
    highlight Comment ctermfg=Cyan            cterm=NONE    guifg=LightBlue            gui=NONE
  endif
endif


com -nargs=0 Html :so $VIMRUNTIME/syntax/2html.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 단축키 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 상용구 설정
"iab xdate <C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR>
"iab xtime <C-R>=strftime("%H:%M:%S")<CR>
"iab xname 인클루드

" BufExplorer 플러그인 (스크립트 번호: 42)
" :ls 와 :b 에 익숙해져서 이젠 필요없다...
"nnoremap <silent> <F6> :BufExplorer<CR>

" Vim 자체 Explore 기능
" :E 라는 게 있었군...
"nnoremap <silent> <F6> :Explore<CR>

" Vim 정규식이 아닌 진짜 정규식 사용을 의무화(?)
" \v 라는 글자가 항상 표시되니까 햇갈린다... -.-
"map / /\v

" <F2> 새 탭 열고 파일 열기
"map <F2> :tabnew<CR>:

" <F5> 실행 설정
"if has("gui_running")
"    map <F5> :!%<
"elseif has("unix")
"    map <F5> :!./%<
"endif

" <F7> 컴파일 설정
"map <F7> <F8>:!gcc % -o %<<CR>

" <F8> 저장 & taglist update 설정
"map <F8> :w<CR>

" <F9> taglist 실행
"map <F9> :TlistToggle<CR>

" <F10> minibufexpl 실행
"map <F10> :TMiniBufExplorer<CR>

" <F11> ShowMarks :: 마크로 이동하기
"map <F11> :ShowMarksPlaceMark<CR>

" <F12> clear mark :: 현재 마크 지우기
"map <F12> :ShowMarksClearMark<CR>
"

nnoremap <silent> <F3> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :FuzzyFinderBuffer<CR>
nnoremap <silent> <F5> :Tlist<CR>
nnoremap <silent> <F6> :TlistUpdate<CR>
nnoremap <silent> <F7> :TlistSync<CR>


nnoremap <silent> <C-F9> :copen<CR>
nnoremap <silent> <F9> :w!<cr>:mak<CR>
nnoremap <silent> <F10> :Run<CR>
nnoremap <silent> <C-F10> :!insight %<.exe<CR>
nnoremap <silent> <C-F1> :cs add D:\Utility\MinGW\include\cscope.out<CR>

" nnoremap <silent> <C-SPACE> i<C-p>



au BufRead,BufNewFile *.c,*.cpp
\ if !filereadable("Makefile") |
\ set makeprg=g++\ %\ -g\ -o\ %< |
\ endif |
\ com! -nargs=* -complete=file Run !%< <args>

au BufRead,BufNewFile *.lua
\ if !filereadable("Makefile") |
\ set makeprg=luac\ -o\ %<.lub\ %\ |
\ endif |
\ com! -nargs=* -complete=file Run !lua ./%<.lub



" =============================================================================
" 커서가 위치한 영어단어를 야후사전에서 찾아줌
" stops the console window from flashing up on the screen
" =============================================================================
map <F8> :!start c:\progra~1\intern~1\iexplore.exe http://kr.engdic.yahoo.com/result.html?p=<cword><CR>




" =============================================================================
" 폴더를 사용하는 방법에 대해서 설정한다. marker 는 { {{ 와 같은 표식을
" 사용하여 폴딩 되는 소스의 범위를 설정 해 놓는다. 이는 이 파일을 다시
" 열었을때 기존의 폴더 정보를 그대로 유지 할수 있게 해 준다.
" =============================================================================
set foldmethod=marker

" =============================================================================
" 폴더 설정이 되어 있는 파일을 열었을때 폴더 되어 있는 레벨을 설정한다.
" 기본값 0이고 모두 폴딩된다.
" =============================================================================
set fdl=0

" =============================================================================
" 소스파일이 폴딩 되어 있을때 폴딩범위를 보여주는 컬럼의 수를 설정한다.
" =============================================================================
set fdc=0



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GUI 간소화
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_running")

" gVim 메뉴를 사용하지 않는다. 대부분의 명령보다 선행되어야 한다.
"    let did_install_default_menus = 1
"    let did_install_syntax_menu = 1
"    let skip_syntax_sel_menu = 1
" 설정 방식이 바뀌었다.
"    set go-=m

" 툴바를 보이지 않게 한다.
"    set go-=T

" 스크롤바를 표시하지 않는다.
"    set go-=l
"    set go-=L
"    set go-=r
"    set go-=R
"    set go-=b

" GUI 여서 마우스가 사용 가능하면...
" 마우스를 사용
    set mouse=a
"    set mouse=

" 마우스 모델을 popup 으로 함.
    set mousem=popup

" '간단한 선택' 다이얼로그가 새 창에서 뜨지 않도록...
"    set go+=c

endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 편리한 기능
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab 자동 완성시 가능한 목록을 보여줌
set wmnu

" 파일 탐색기 설정
let g:explVertical=1
let g:explSplitRight=1
let g:explStartRight=1
let g:explWinSize=20

" vim -b : xxd 포맷으로 바이너리 파일을 수정합니다! (:help hex-editing)
" ...너무 ㅂㅌ적인 방법인 것 같아서 주석처리;
"augroup Binary
"    au!
"    au BufReadPre  *.bin let &bin=1
"    au BufReadPost *.bin if &bin | %!xxd
"    au BufReadPost *.bin set ft=xxd | endif
"    au BufWritePre *.bin if &bin | %!xxd -r
"    au BufWritePre *.bin endif
"    au BufWritePost *.bin if &bin | %!xxd
"    au BufWritePost *.bin set nomod | endif
"augroup END

" Spell Checking 기능 (영어)
" 기본적으로는 비활성화
set nospell spelllang=en

" 각종 toggle 기능
fu! ToggleNu()
    let &nu = 1 - &nu
endf
fu! ToggleList()
    let &list = 1 - &list
endf
fu! TogglePaste()
    let &paste = 1 - &paste
endf
fu! ToggleSpell()
    let &l:spell = 1 - &l:spell
endf
map \n :call ToggleNu()<CR>
map \l :call ToggleList()<CR>
map \p :call TogglePaste()<CR>
map \s :call ToggleSpell()<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 자주 틀리는 글자 수정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
ab fucntion function
ab calss class
ab functio function
ab dunction function
ab functuin function
ab dunction function
ab functuin function
ab functopn function
ab fumction function
ab vlass class
ab xlass class
ab classs class
ab forarch foreach
ab inser insert
ab insertt insert
ab quewrty query
ab ovject object
ab objectr object
ab evho echo
ab printr print_r
ab prit print
ab fales false
ab treu true
ab teur true
ab nulll null
ab nuii null
ab retrun return
ab retunr return
ab htis this
ab erturn return


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 기타 설정
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 매크로 실행중에 화면을 다시 그리지 않음
set lz

" 프로그램 시작시 플러그인 로드
set lpl

"noeol 설정
"au BufNew * set bin | set noeol
"set bin | set noeol

" ㅂㅌ barosl 은 모든 플랫폼에서 unix 줄 변경자를 쓰겠습니다! ..orz
" 경고: 만일 당신의 vim 이 '정상적으로' 동작하길 원하시면,
" 바로 다음줄은 주석처리 하거나 없애세요. -.-;;
" set ff=unix

" unix dos mac 줄 변경자 모두 다 읽을 수 있도록 합니다.
set ffs=unix,dos,mac

set csprg=C:\Progra~1\Vim\Vim72\cscope.exe
"set csto=0
"set cst
"set nocsverb

set tags=./tags,tags
set tags+=D:\Utility\MinGW\include\tags
"cs add D:\Utility\MinGW\include\cscope.out

if filereadable ("./cscope.out")
    cs add cscope.out
endif

set scrolloff=5

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FORTH
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au BufRead,BufNewFile *.f setl ft=forth
au BufRead,BufNewFile *.frm setl ft=forth


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of File
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let b:dochelpdelay=100

