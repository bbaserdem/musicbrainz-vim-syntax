function! DetectMusicbrainz()
  if expand('%:p:h:t')==?'Music' && expand('%:p:t'==?'Musicbrainz')
    setfiletype musicbrainz
  endif
endfunction

augroup filetypedetect
  au BufNewFile,BufRead *.mbs set filetype=musicbrainz
  au BufRead,BufNewFile * call DetectMusicbrainz()
augroup END
