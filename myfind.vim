function! FindWord(word)
    "" 跳到单词
    let l:result =  search(a:word)
    if l:result == 0
       echo "找不到匹配!"
    else
        normal! e
        echo a:word
    end
endfunction

" 定义命令
command! -nargs=1 FindWord call FindWord(<f-args>)
nnoremap <F5> :FindWord<space>
