#compdef headerSummarizer.sh

local arguments

arguments=(
  {-n,--quiet,--silent}'[suppress automatic printing of pattern space]'
  {-e,--expression}'[add the script to the commands to be executed]'
  {-f,--file}'[add the contents of script-file to the commands to be executed]'
  '--follow-symlinks[follow symlinks when processing in place]'
  {-i,--in-place}'[edit files in place (makes backup if SUFFIX supplied)]'
  {-l,--line-length}'[specify the desired line-wrap length for the `l command]'
  '--posix[disable all GNU extensions.]'
  {-E,-r,--regexp-extended}'[use extended regular expressions in the script]'
  {-s,--separate}'[consider files as separate rather than as a single]'
  '--sandbox[operate in sandbox mode (disable e/r/w commands).]'
  {-u,--unbuffered}'[load minimal amounts of data from the input files and flush]'
  {-z,--null-data}'[separate lines by NUL characters]'
  '--help[display this help and exit]'
  '--version[output version information and exit]'
  '*:filename:_files'
)

_arguments -s $arguments
