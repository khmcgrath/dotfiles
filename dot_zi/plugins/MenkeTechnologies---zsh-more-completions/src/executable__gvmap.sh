#compdef gvmap

# Autogenerated from man page /usr/share/man/man1/gvmap.sh.1.gz

local arguments

arguments=(
    '-a[The integer k specifies the average number of artificial points added along …]:k"'
    '-K[specifies which program should be use for the initial layout.]:layout"'
    '-T[specifies the final output format.]:format"'
    '-N[specifies the setting of a default node attribute during the rendering phase.]'
    '-G[specifies the setting of a graph attribute during the rendering phase.]'
    '-E[specifies the setting of a default edge attribute during the rendering phase.]'
    '-n[specifies the setting of a default node attribute during the layout phase.]'
    '-g[specifies the setting of a graph attribute during the layout phase.]'
    '-e[specifies the setting of a default edge attribute during the layout phase.]'
    '-A[specifies a flag to be passed to gvmap. For example, gvmap.]:flag"'
    '-v[Set verbose mode.]'
    '-V[Print version information and exit.]'
    '-?[Print usage information and exit.]'
    '*:filename:_files'
)
_arguments -s $arguments
