TODO: SPELL CHECK ME PLEASE

# Personal website

This repo holds the files that make up my personal website.
I'm still learning HTML and CSS, so expect naive and amateur
approches to many things.

# Structure & building

## Dependencies

See below for explanations, but the dependencies are:
`make, sed, cat, pandoc, rm`. The version of the classic UNIX tools
I use is the one by GNU, same thing with `make`.

Maybe it's already obvious, but a UNIX-like system is required.
If you're on windows, look into WSL (windows 10) or any of the other
ways to get a POSIX system on windows.

## General structure

The HTML for the site get "automatically" (not all of them) generated
from markdown files in `mdsrc`. I've set it up so that I only have
to edit markdown when I want to write something new for the site.

Right now the build process is almost manual, it relies in a, rather ugly,
makefile. I put this system together in one afternoon, so there's much
room for improvement.

The makefile takes the markdown files and a couple special HTML files
in the root dir to make all the files that the site requires.
The special HTML files are: `nav, head, clean-body, head.`
These files are often edited manually to add new content to the site.
For example, navigation links are not handled automatically.

The makefile uses `cat, sed` and `pandoc`. These three simple tools
come together in even simpler pipes.
I'm sure this'll change as I learn better ways to do it.

## Styling

I tried to keep styling as simple as possible.
The multiple `@media` calls are surely not the best approach,
but they work for now.

The typefaces used are in the `fonts` folder, and are under open
licenses.

## Spanish files

All files with the prefix 'es-' form the spanish translation of the site.
This translation is done manually, by me.
My native language is spanish, so keeping a spanish version of the site
I can quickly send to, say, a local employer, is really useful.

## License

MIT, see the license file.
