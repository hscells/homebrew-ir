class Fbthrift < Formula
  homepage "https://github.com/facebook/fbthrift"
  head "https://github.com/facebook/fbthrift.git"

  url "https://github.com/facebook/fbthrift.git", :tag => "v0.20.0"
  version "0.22.0"

  depends_on "glog"
  depends_on "gflags"
  depends_on "double-conversion"
  depends_on "boost"
  depends_on "folly"
  depends_on "snappy"
  depends_on "libevent"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build

  def install
    cd "thrift" do
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
