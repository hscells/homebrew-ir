class DoubleConversion < Formula
  homepage "https://github.com/floitsch/double-conversion"

  version "1.1.15"
  url "https://github.com/floitsch/double-conversion.git", :tag => "v1.1.5"

  head "https://github.com/floitsch/double-conversion.git"

  depends_on "cmake" => :build
  
  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
