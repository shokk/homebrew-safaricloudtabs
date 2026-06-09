class Safaricloudtabs < Formula
  desc "Inspect Safari iCloud tab groups from the command line"
  homepage "https://github.com/shokk/homebrew-safaricloudtabs"
  url "https://github.com/shokk/homebrew-safaricloudtabs/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "92174438b757a73aecc8c40e10f9a647001d8588be922f0378fd81b2cef4096e"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "safaricloudtabs"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/safaricloudtabs -h")
  end
end
