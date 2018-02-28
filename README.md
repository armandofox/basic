BASIC
=====

My evolving monograph "In Praise of BASIC".

To get it to display properly, you need to get LaTeX to recognize the
Teletype font `TELETYPE1945-1985.ttf` as "classic" font family `oty`.  
The following instructions work
for MacTeX and should work for similarly-organized TeX distributions:

1.  Locate the `texmf-dist` directory for your TeX distribution.  For
MacOS TeXLive, it is usually `/usr/local/texlive/{distrib}/texmf-dist`;
check System Preferences > TeX distribution to see which
distrib you have active)

2. As root (or a user that can write to the above directory), change
into the paper's home directory and run
`ttf2texfonts.sh `_dirname_ where _dirname_ is the texmf-dist directory above

3. As a regular user, you can now run `make` to make the pdf file, etc.,
and use `oty` to reference the Teletype font family (uppercase roman
only) in your documents.

See also:
http://c.caignaert.free.fr/Install-ttf-Font.pdf
