class Safaricloudtabs < Formula
  desc "Inspect Safari iCloud tab groups from the command line"
  homepage "https://github.com/shokk/homebrew-safaricloudtabs"
  url "https://github.com/shokk/homebrew-safaricloudtabs/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "73949421908cf2d4ccedf9c48101d79eda2207d1214aeba2a7b12a06e03f6f7d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "safaricloudtabs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/safaricloudtabs -h")
  end
end
