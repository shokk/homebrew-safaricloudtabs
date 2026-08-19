class Safaricloudtabs < Formula
  desc "Inspect Safari iCloud tab groups from the command line"
  homepage "https://github.com/shokk/homebrew-safaricloudtabs"
  url "https://github.com/shokk/homebrew-safaricloudtabs/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "dc596b8a1b0c925b5b49437165eb7cde65894ee645abb7b39f0d373e0e14ec5c"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "safaricloudtabs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/safaricloudtabs -h")
  end
end
