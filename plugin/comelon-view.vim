if get(g:, 'loaded_comment_viewer', 0) || !exists('g:nyaovim_version')
  finish
end

function! OpenComelonView(liveId) abort
  call rpcnotify(0, 'comelon-view:open', a:liveId)
endfunction

function! CloseComelonView() abort
  call rpcnotify(0, 'comelon-view:close')
endfunction

function! PostComment(comment) abort
  call rpcnotify(0, 'comelon-view:post', a:comment)
endfunction

command! -nargs=* CommentViewerOpen call OpenComelonView(<f-args>)
command! -nargs=0 CommentViewerClose call CloseComelonView()
command! -nargs=* CommentPost call PostComment(<f-args>)

let g:loaded_comment_viewer = 1
