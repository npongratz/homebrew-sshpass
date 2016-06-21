# To install sshpass using homebrew:
#   $ brew install https://raw.githubusercontent.com/npongratz/homebrew-sshpass/master/sshpass.rb

# History:
#  Originally cloned from https://raw.githubusercontent.com/eugeneoden/homebrew/eca9de1/Library/Formula/sshpass.rb
#  Update on 20160621 by Nick Pongratz:
#    - Replaced md5 with sha256 as required by homebrew
#    - Use https URLs instead of http

require 'formula'

class Sshpass < Formula
  url 'https://sourceforge.net/projects/sshpass/files/sshpass/1.05/sshpass-1.05.tar.gz'
  homepage 'https://sourceforge.net/projects/sshpass'
  sha256 'c3f78752a68a0c3f62efb3332cceea0c8a1f04f7cf6b46e00ec0c3000bc8483e'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
