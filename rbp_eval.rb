require 'formula'

class RbpEval < Formula
  homepage 'http://dl.acm.org/citation.cfm?doid=1416950.1416952'
  url 'http://people.eng.unimelb.edu.au/ammoffat/rbp_eval-0.2.tar.gz'
  sha256 '5467fb35116c10527979fbdc152e4041cb62414c6295fd1ed31312b60a1c69a9'
  version '0.2'


  def install

    system './configure', "CXXFLAGS='-stdlib=libstdc++'", "--prefix=" + buildpath + "/out"
    system 'make'
    system 'make', 'install'

    bin.install 'out/bin/rbp_eval'

  end

  test do
    system 'rbp_eval'
  end
end
