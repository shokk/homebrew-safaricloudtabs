class Safaricloudtabs < Formula
  desc "Inspect Safari iCloud tab groups from the command line"
  homepage "https://github.com/shokk/safari-cloud-tabs"
  url "https://github.com/shokk/homebrew-safaricloudtabs/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "7238437030bcb3f50f91039632669335e5908a1ee4bb9d577e6c5b98b4faca5d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "safaricloudtabs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/safaricloudtabs -h")
  end
end
