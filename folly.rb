class Folly < Formula
  homepage "https://github.com/facebook/folly"
  head "https://github.com/facebook/folly.git"

  url "https://github.com/facebook/folly.git", :tag => "v0.22.0"
  version "0.22.0"

  depends_on "glog"
  depends_on "gflags"
  depends_on "double-conversion"
  depends_on "boost"
  depends_on "libevent"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    cd "folly" do
      system "autoreconf", "-ivf"
      system "./configure", "--disable-debug",
                            "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make" 
      system "make", "install"
    end
  end

end
