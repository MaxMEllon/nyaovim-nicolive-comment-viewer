function! OpenComelonView(liveId)
  call rpcnotify(0, 'comelon-view:open', a:liveId)
endfunction

function! CloseComelonView()
  call rpcnotify(0, 'comelon-view:close')
endfunction

function! PostComment(comment)
  call rpcnotify(0, 'comelon-view:post', a:comment)
endfunction
