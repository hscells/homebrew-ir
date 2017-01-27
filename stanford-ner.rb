require "formula"

class StanfordNer < Formula
  homepage "http://nlp.stanford.edu/software/CRF-NER.shtml"
  url "http://nlp.stanford.edu/software/stanford-ner-2016-10-31.zip"
  sha256 "fbf0540e59d8467c3abd0955b7b0f81307cc37d846da87627bfade4fc2045f70"


  def install
    # rename the main script to something nicer for users
    system "mv", "ner.sh", "stanford-ner"
    # allow it to be run anywhere
    inreplace "stanford-ner", "`dirname $0`", "#{prefix}"

    # install the library files (as well as the jar for advanced use)
    prefix.install "lib", "classifiers", "stanford-ner.jar"

    # and now install the file we modified before to the bin
    bin.install "stanford-ner"
  end

  test do
    system "stanford-ner"
  end
end
