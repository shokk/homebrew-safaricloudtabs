class Safaricloudtabs < Formula
  desc "Inspect Safari iCloud tab groups from the command line"
  homepage "https://github.com/shokk/safari-cloud-tabs"
  url "https://github.com/shokk/safari-cloud-tabs/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "a8e38235ccd451f08e02704ebd84528b20e2d60e98e831ee81c5115c6959de6e"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "safaricloudtabs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/safaricloudtabs -h")
  end
end
