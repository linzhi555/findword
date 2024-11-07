function! FindWord(word)
  " 清除高亮
  :nohlsearch

  " 查找单词找不到就报错
  let l:count = search(a:word, 'w')
 
  if l:count > 0
    echo '找到 ' . l:count . ' 个匹配项'
    execute 'silent /' . a:word
    :set hlsearch

    "" 移动到单词尾部
    execute 'w'
  else
    echo '没有找到匹配项'
  endif
endfunction

" 定义命令
command! -nargs=1 FindWord call FindWord(<f-args>)
nnoremap <F5> :FindWord<space>
