#compdef encrypt.sh

local arguments

arguments=(
  {-e,--encrypt}'[encrypt]'
  {-d,--decrypt}'[decrypt]'
  {-c,--cat}'[cat; decrypt files to stdout]'
  {-x,--keychange}'[change key]'
  {-u,--unixcrypt}'[decrypt old unix crypt files]'
  '(- * :)'{-h,--help}'[print this help message and exit]'
  {-V,--version}'[print version info and exit]'
  {-L,--license}'[print license info and exit]'
  {-v,--verbose}'[print progress information to stderr]'
  {-q,--quiet}'[run quietly; suppress warnings]'
  {-f,--force}'[overwrite existing files without asking]'
  {-m,--mismatch}'[allow decryption with non-matching key]'
  {-E,--envvar}'[read keyword from environment variable (unsafe)]'
  {-K,--key}'[give keyword on command line (unsafe)]'
  {-k,--keyfile}'[read keyword(s) as first line(s) from file]'
  {-P,--prompt}'[use this prompt instead of default]'
  {-S,--suffix}'[use suffix .suf instead of default .cpt]'
  {-s,--strictsuffix}'[refuse to encrypt files which already have suffix]'
  {-F,--envvar2}'[as -E for second keyword (for keychange mode)]'
  {-H,--key2}'[as -K for second keyword (for keychange mode)]'
  {-Q,--prompt2}'[as -P for second keyword (for keychange mode)]'
  {-t,--timid}'[prompt twice for encryption keys (default)]'
  {-b,--brave}'[prompt only once for encryption keys]'
  {-y,--keyref}'[encryption key must match this encrypted file]'
  {-r,--recursive}'[recurse through directories]'
  {-R,--rec-symlinks}'[follow symbolic links as subdirectories]'
  {-l,--symlinks}'[dereference symbolic links]'
  {-T,--tmpfiles}'[use temporary files instead of overwriting (unsafe)]'
  '*:filename:_files'
)

_arguments -s $arguments
