function! DetectMusicbrainz()
  if expand('%:p:h:t')==?'Music' && expand('%:p:t'==?'Musicbrainz') && (expand('%:e'==?'txt') || expand('%:e'==?'yaml'))
    setfiletype musicbrainz
  endif
endfunction

augroup filetypedetect
  au BufNewFile,BufRead *.mbs set filetype=musicbrainz
  au BufNewFile,BufRead *.pts set filetype=musicbrainz
  au BufNewFile,BufRead *.ptsp set filetype=musicbrainz
  au BufRead,BufNewFile * call DetectMusicbrainz()
augroup END
