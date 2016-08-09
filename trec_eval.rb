require "formula"

class TrecEval < Formula
  homepage "http://trec.nist.gov/trec_eval/"
  url "http://trec.nist.gov/trec_eval/trec_eval.8.1.tar.gz"
  sha256 "38147c4a0fa5d13b09092b0f8dd55142902ae2a4bc6e34db03fadb78f28f612e"


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
