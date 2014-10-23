require "formula"

class TrecEval < Formula
  homepage "http://trec.nist.gov/trec_eval/"
  url "http://trec.nist.gov/trec_eval/trec_eval.8.1.tar.gz"
  sha1 "b983948d797ae9ca80845b90742cdb7176ace7d5"


  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    system "mkdir", "#{prefix}/bin"
    system "make", "install", "BIN=#{prefix}/bin"
  end

  test do
    system "trec_eval"
  end
end
