require "formula"

class SvmRank < Formula
  homepage "https://www.cs.cornell.edu/people/tj/svm_light/svm_rank.html"
  url "http://download.joachims.org/svm_rank/current/svm_rank.tar.gz"
  sha256 "909f67bf57b13916acc78fd6aa8794df93be9f29d90a03e9dc2d7a49fe4dd7b2"

  def install
    system 'make'

    bin.install 'svm_rank_learn'
    bin.install 'svm_rank_classify'
  end

  test do
    system "svm_rank_learn"
    system "svm_rank_classify"
  end
end
