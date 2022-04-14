" Vim syntax file
" Language: Picard scripts
" Maintainer: bbaserdem

" There are text, variable and functions
" Variable: refered to by name, values extracted by %...%
" Functions: Start with a dollar sign
" Text: Anything else is interpreted as text
" Characters to escape: \ $ , ( )

if 'v:version' <? 600
    syntax clear
elseif exists('b:current_syntax')
  finish
endif
let b:current_syntax = 'musicbrainz'

scriptencoding utf-8

syntax iskeyword @,48-57,192-255,_,-,%

" FUNCTION NAMES
" These are defined function names (noop is comment blocks; do not put here)
" Assignment
syntax keyword FunctionNames contained nextgroup=FunctionArguments copy copymerge delete set setmulti unset
" Text
syntax keyword FunctionNames contained nextgroup=FunctionArguments delprefix find firstalphachar firstwords get
syntax keyword FunctionNames contained nextgroup=FunctionArguments initials left len lower num pad replace
syntax keyword FunctionNames contained nextgroup=FunctionArguments reverse right rreplace rsearch strip substr
syntax keyword FunctionNames contained nextgroup=FunctionArguments swapprefix title trim truncate upper
" Multivalue
syntax keyword FunctionNames contained nextgroup=FunctionArguments getmulti join lenmulti map performer replacemulti
syntax keyword FunctionNames contained nextgroup=FunctionArguments reversemulti slice sortmulti unique
" Mathematical
syntax keyword FunctionNames contained nextgroup=FunctionArguments add div mod mul sub
" Conditional
syntax keyword FunctionNames contained nextgroup=FunctionArguments and endswith eq eq_all eq_any gt gte if if2
syntax keyword FunctionNames contained nextgroup=FunctionArguments in inmulti is_audio is_complete is_multi
syntax keyword FunctionNames contained nextgroup=FunctionArguments is_video lt lte ne ne_all ne_any not or
syntax keyword FunctionNames contained nextgroup=FunctionArguments startswith
" Information
syntax keyword FunctionNames contained nextgroup=FunctionArguments countryname dateformat datetime day matchedtracks
syntax keyword FunctionNames contained nextgroup=FunctionArguments month year
" Loop
syntax keyword FunctionNames contained nextgroup=FunctionArguments foreach while


" TAG NAMES
" These are provided tags by picard
syntax keyword TagNames acousticid_fingerprint acoustic_id album albumartist
syntax keyword TagNames albumartistsort albumsort artist artists artistsort asin
syntax keyword TagNames barcode bpm catalognumber comment compilation copyright
syntax keyword TagNames date director discnumber discsubtitle encodedby
syntax keyword TagNames encodersettings isrc key label language lyrics media
syntax keyword TagNames musicbrainz_albumartistid musicbrainz_albumid
syntax keyword TagNames musicbrainz_artistid musicbrainz_discid
syntax keyword TagNames musicbrainz_originalalbumid musicbrainz_originalartistid
syntax keyword TagNames musicbrainz_recordingid musicbrainz_releasegroupid
syntax keyword TagNames musicbrainz_trackid musicbrainz_workid
syntax keyword TagNames originalalbum originalartist originaldate originalyear
syntax keyword TagNames releasecountry releasestatus releasetype script subtitle
syntax keyword TagNames title titlesort totaldiscs totaltracks tracknumber
syntax keyword TagNames arranger composer composersort conductor djmixer
syntax keyword TagNames engineer license lyricist mixer producer remixer work
syntax keyword TagNames writer genre
syntax keyword TagNames _absolutetracknumber _albumartists _albumartists_sort
syntax keyword TagNames _artists_sort _datatrack _discpregap _multiartist
syntax keyword TagNames _musicbrainz_discids _musicbrainz_tracknumber _pregap
syntax keyword TagNames _primaryreleasetype _rating _recording_comment
syntax keyword TagNames _recording_firstreleasedate _releaseannotation
syntax keyword TagNames _releasecomment _releasecountries _releasegroup
syntax keyword TagNames _releasegroupcomment _releasegroup_firstreleasedate
syntax keyword TagNames _releaselanguage _secondaryreleasetype _totalalbumtracks
syntax keyword TagNames _bitrate _bits_per_sample _channels _dirname _extension
syntax keyword TagNames _filename _format _length _sample_rate
syntax keyword TagNames _performance_attributes _recordingcomment
syntax keyword TagNames _recordingtitle _workcomment
syntax keyword TagNames movement movementnumber movementtotal showmovement work
syntax keyword TagValues %acousticid_fingerprint% %acoustic_id% %album% %albumartist%
syntax keyword TagValues %albumartistsort% %albumsort% %artist% %artists% %artistsort% %asin%
syntax keyword TagValues %barcode% %bpm% %catalognumber% %comment% %compilation% %copyright%
syntax keyword TagValues %date% %director% %discnumber% %discsubtitle% %encodedby%
syntax keyword TagValues %encodersettings% %isrc% %key% %label% %language% %lyrics% %media%
syntax keyword TagValues %musicbrainz_albumartistid% %musicbrainz_albumid%
syntax keyword TagValues %musicbrainz_artistid% %musicbrainz_discid%
syntax keyword TagValues %musicbrainz_originalalbumid% %musicbrainz_originalartistid%
syntax keyword TagValues %musicbrainz_recordingid% %musicbrainz_releasegroupid%
syntax keyword TagValues %musicbrainz_trackid% %musicbrainz_workid%
syntax keyword TagValues %originalalbum% %originalartist% %originaldate% %originalyear%
syntax keyword TagValues %releasecountry% %releasestatus% %releasetype% %script% %subtitle%
syntax keyword TagValues %title% %titlesort% %totaldiscs% %totaltracks% %tracknumber%
syntax keyword TagValues %arranger% %composer% %composersort% %conductor% %djmixer%
syntax keyword TagValues %engineer% %license% %lyricist% %mixer% %producer% %remixer% %work%
syntax keyword TagValues %writer% %genre%
syntax keyword TagValues %_absolutetracknumber% %_albumartists% %_albumartists_sort%
syntax keyword TagValues %_artists_sort% %_datatrack% %_discpregap% %_multiartist%
syntax keyword TagValues %_musicbrainz_discids% %_musicbrainz_tracknumber% %_pregap%
syntax keyword TagValues %_primaryreleasetype% %_rating% %_recording_comment%
syntax keyword TagValues %_recording_firstreleasedate% %_releaseannotation%
syntax keyword TagValues %_releasecomment% %_releasecountries% %_releasegroup%
syntax keyword TagValues %_releasegroupcomment% %_releasegroup_firstreleasedate%
syntax keyword TagValues %_releaselanguage% %_secondaryreleasetype% %_totalalbumtracks%
syntax keyword TagValues %_bitrate% %_bits_per_sample% %_channels% %_dirname% %_extension%
syntax keyword TagValues %_filename% %_format% %_length% %_sample_rate%
syntax keyword TagValues %_performance_attributes% %_recordingcomment%
syntax keyword TagValues %_recordingtitle% %_workcomment%
syntax keyword TagValues %movement% %movementnumber% %movementtotal% %showmovement% %work%

" PICARD ITEM - TEXT
" These are escaped characters
syntax match EscapedCharacters '\\\\'
syntax match EscapedCharacters '\\\$'
syntax match EscapedCharacters '\\,'
syntax match EscapedCharacters '\\('
syntax match EscapedCharacters '\\)'

" PICARD ITEMS - VARIABLES
syntax match VariableValues '\(\\\)\@<!%[a-zA-Z0-9_]\+\(\\\)\@<!%'
"syntax region TagValues matchgroup=TagNames start='\(\\\)\@<!%\(\s\)\@<!' end='\(\s\)\@<!\(\\\)\@<!%'

" PICARD ITEMS - FUNCTIONS
" This is function handle format, and match unescaped commas
syntax region FunctionArguments matchgroup=FunctionCaps contained start='(' end=')' transparent
syntax match FunctionArgumentsSeperator containedin=FunctionArguments '\(\\\)\@<!,'
syntax match FunctionHandle '\(\\\)\@<!\$' nextgroup=FunctionNames

" PICARD - COMMENTS
" Comments are made in noop function blocks; which should be seperated
syntax region CommentLine matchgroup=CommentCaps start='\$noop(' end=')' skip='\\)'

" COLORING
" Match the function head
highlight link EscapedCharacters Special
" Variables
highlight link VariableValues Constant
highlight link TagNames Type
highlight link TagValues Type
" Functions
highlight link FunctionHandle Identifier
highlight link FunctionNames Identifier
highlight link FunctionCaps Statement
highlight link FunctionArgumentsSeperator Statement
" Comments
highlight link CommentLine Comment
highlight link CommentCaps Comment
