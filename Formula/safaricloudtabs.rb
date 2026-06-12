class Safaricloudtabs < Formula
  desc "Inspect Safari iCloud tab groups from the command line"
  homepage "https://github.com/shokk/homebrew-safaricloudtabs"
  url "https://github.com/shokk/homebrew-safaricloudtabs/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "716406eb3e34c959de5dcdea27f447da8f4fcc083b3b266a7a1add352ca2870e"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "safaricloudtabs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/safaricloudtabs -h")
  end
end
