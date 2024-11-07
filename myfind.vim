function! FindWord(word)
    "" 不要高亮
    echo a:word
    "" 跳到单词
    call search(a:word)
    "" 移动到单词尾部
    normal! e
endfunction

" 定义命令
command! -nargs=1 FindWord call FindWord(<f-args>)
nnoremap <F5> :FindWord<space>
