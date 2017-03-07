require 'formula'

class InstEval < Formula
  homepage 'https://github.com/ielab/inst_eval'
  url 'https://github.com/ielab/inst_eval/archive/v1.0.1.zip'
  sha256 '9d19c2f2ccbf5735710cd65c79ff5228dce3f9c29a295352312d7a014bf4884c'
  version '1.0.1'


  def install

    system 'mv', 'inst_eval.py', 'inst_eval'

    bin.install 'inst_eval'

  end

  test do
    system 'inst_eval'
  end
end
