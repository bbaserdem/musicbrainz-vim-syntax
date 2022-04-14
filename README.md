# musicbrainz-vim-syntax - syntax highlighting for MB tagger scripts

This is a very simple sytax plugin to help highlighting
[MusicBrainz tagger scripts](https://picard-docs.musicbrainz.org/en/extending/scripting.html).
Syntax is derived from
[Foobar2000's titleformat](https://wiki.hydrogenaud.io/index.php?title=Foobar2000:Titleformat_Reference).

## Features

This is a very basic try at syntax highlighting.

### Built-in

All valid musicbrainz tags and functions are contained.

### File Type

* Any text files called `~/Music/MusicBrainz` will gain the file association.
* File extension `.mbs` is now associated with MusicBrainz scripts.

## Installation

### Vim-Plug

Install using [vim-plug](https://github.com/junegunn/vim-plug) by putting

```
Plugin 'bbaserdem/musicbrainz-vim-syntax'
```

to your startup files, and run `:PluginInstall`.
