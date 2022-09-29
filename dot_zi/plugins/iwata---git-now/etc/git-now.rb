require 'formula'

class GitNow < Formula
  url  'https://github.com/iwata/git-now.git', :tag => 'v0.1.1.0'
  version '0.1.1.0'
  head 'https://github.com/iwata/git-now.git', :branch => 'develop'
  homepage 'https://github.com/iwata/git-now'

  def options
    [
        ['--zsh-completion', "copy zsh completion function file to #{share}/zsh/functions: please add #{share}/zsh/functions to $fpath in .zshrc"]
    ]
  end

  def patches
    DATA
  end

  # for longopt
  depends_on 'gnu-getopt'

  def install
    system "make", "prefix=#{prefix}", "install"
    if ARGV.include? '--zsh-completion'
      zsh_functions_d = share + 'zsh/site-functions'
      zsh_functions_d.install "etc/_git-now"
    end
  end

end

#This patch makes sure GNUtools are used on OSX.
#gnu-getopt is keg-only hence the backtick expansion.
#These aliases only exist for the duration of git-now,
#inside the git-now shells. Normal operation of bash is
#unaffected - getopt will still find the version supplied
#by OSX in other shells, for example.
__END__
--- a/git-now
+++ b/git-now
@@ -1,5 +1,7 @@
 #!/bin/sh

+alias getopt='`brew --prefix gnu-getopt`/bin/getopt'
+
 # enable debug mode
 if [ "$DEBUG" = "yes" ]; then
   set -x

