#compdef evtx_structure.py

local arguments

arguments=(
  '(- * :)'{-h,--help}'[show this help message and exit]'
  '*:filename:_files'
)

_arguments -s $arguments