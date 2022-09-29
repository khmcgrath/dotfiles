#compdef afterglow.pl

local arguments

arguments=(
  '-a[turn off labeling of the output graph with the configuration used]'
  '-b[number of lines to skip (e.g., 1 for header line)]'
  '-c[color config file]'
  '-d[print node count]'
  '-e[edge length]'
  '-f[source fan out threshold]'
  '-g[event fan out threshold (only in three node mode)]'
  '-h[this (help) message]'
  '-i[read from input file, instead of from STDIN]'
  '-k[output in GDF format instead of DOT]'
  '-j[output in GraphSON format instead of DOT]'
  '-l[the maximum number of lines to read]'
  '-m[the maximum size for a node]'
  '-n[dont print node labels]'
  '-o[omit threshold (minimum count for nodes to be displayed)]'
  '-p[split mode for predicate nodes where mode is]'
  '-q[suppress all output. Attention! You should use -w to write output to a file!]'
  '-r[print source node names]'
  '-s[split subject and object nodes]'
  '-t[two node mode (skip over objects)]'
  '-v[verbose output]'
  '-w[write output to a file instead of STDOUT]'
  '-x[text label color]'
  '*:filename:_files'
)

_arguments -s $arguments
