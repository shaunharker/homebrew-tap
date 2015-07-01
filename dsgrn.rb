class Dsgrn < Formula
  desc "DSGRN: Dynamic Signatures for Genetic Regulatory Networks"
  homepage "https://github.com/shaunharker/DSGRN"
  url "https://github.com/shaunharker/DSGRN/archive/0.1.tar.gz"
  version "0.1"
  sha256 "4af31ef3cbe74fe372ad75244178ff931a6bafbd9c26a79cbf69742860a564dc"

  depends_on "cmake" => :build
  depends_on "cluster-delegator" => :build  
  depends_on "openmpi" => :build
  depends_on "boost" => :build

  def install
    system "./install.sh"
  end

  test do
    system "dsgrn"
  end
end
