class ClusterDelegator < Formula
  desc "cluster-delegator"
  homepage "https://github.com/shaunharker/cluster-delegator"
  url "https://github.com/shaunharker/cluster-delegator/archive/v2.0.tar.gz"
  version "2.0"
  sha256 "21697f52630709dc448e776d2ded96216fd1a6c03ea1fb4ff90982a261f5fa14"

  depends_on "boost" => :build

  def install
    system "./install.sh", "--prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
