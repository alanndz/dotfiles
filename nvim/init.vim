set noautoindent
set nosmartindent
set nocindent
autocmd FileType * setlocal noautoindent nosmartindent nocindent indentexpr=
autocmd InsertEnter * set paste
autocmd InsertLeave * set nopaste
set listchars=tab:>-,trail:·,space:·
