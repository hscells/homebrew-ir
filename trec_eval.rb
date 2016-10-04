require "formula"

class TrecEval < Formula
  homepage "http://trec.nist.gov/trec_eval/"
  url "http://trec.nist.gov/trec_eval/trec_eval_latest.tar.gz"
  sha256 "1e6d197293af63b22b52f747d4c7db87227d4ef9cb0d0982d17dac802713b73e"


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
