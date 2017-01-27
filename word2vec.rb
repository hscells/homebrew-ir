require 'formula'

class Word2vec < Formula
  homepage 'https://arxiv.org/abs/1301.3781'
  url 'https://github.com/dav/word2vec/archive/master.zip'
  sha256 '40a64e4d352416fbd4feca373627bb6fbe90391dc530369fd1ace1b96973108a'
  version '1.0'


  def install
    system 'cd src && make all'
    bin.install 'bin/word2vec', 'bin/word2phrase', 'bin/distance', 'bin/word-analogy', 'bin/compute-accuracy'
  end

  test do
    system 'word2vec'
  end
end
