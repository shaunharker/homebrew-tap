class Dsgrn < Formula
  desc "DSGRN: Dynamic Signatures for Genetic Regulatory Networks"
  homepage "https://github.com/shaunharker/DSGRN"
  url "https://github.com/shaunharker/DSGRN/archive/0.1.tar.gz"
  version "0.1"
  sha256 "2fce6fa4b9713c9d897c21892432689f3c32b091d4b2038e68c5e8e68b869744"

  depends_on "cmake" => :build
  depends_on "shaunharker/tap/cluster-delegator" => :build  
  depends_on "openmpi" => :build
  depends_on "boost" => :build

  def install
    system "./install.sh", "--prefix=#{prefix}"
  end

  test do
    system "dsgrn"
  end
end
