# Translate .l0 to .l0.abc using esc on tamarin
#
# You must first build a tamarin executable and store it under the
# name "shell" (or "shell.exe") in the directory $DIR.
#
# Usage:
#   esc.sh [<option> ...] <filename> ...
#
# Options:
#
#   -[no-]es3
#      Recognize only (not only) ES3 keywords (not "future reserved words")
#
#   -[no-]extensions
#      Turn on (off) some extensions to ES4 (UTSL)
#
#   -g
#   -[no-]debug
#      Emit (do not emit) debug information
#
#   -Xprofile
#      Profile the compiler: dump a statistical profile to the file 
#      esc.profile following compilation.
#
# Defaults are -no-es3 -no-extensions -no-debug.
#
# esc.sh must be run from $DIR, or you must change the value of
# $DIR to be the absolute path of the bin directory (that has the
# shell and the abc files for ESC).

DIR=../bin

$DIR/shell $DIR/l3c.swf -- $@
