class ClusterDelegator < Formula
  desc "cluster-delegator"
  homepage "https://github.com/shaunharker/cluster-delegator"
  url "https://github.com/shaunharker/cluster-delegator/archive/v2.0.tar.gz"
  version "2.0"
  sha256 "5bfe84f7739f7c80f569c42e60cdc35f2f91970a9a1b8415fbe4224543e37d77"

  depends_on "boost" => :build

  def install
    system "./install.sh", "--prefix=#{prefix}"
  end

  test do
    system "true"
  end
end
