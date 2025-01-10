class Networkprofiles < Formula
  desc ""
  homepage "https://github.com/PanterSoft/network-profiles"
  url "https://github.com/PanterSoft/network-profiles/releases/download/v0.0.2/network-profiles-v0.0.2.tar.gz"
  sha256 "d735c2c41232f9e3beea6059dedc16ab69c448f5d0e767c6b5809378dfca1138"
  license "MIT"
  version "v0.0.2"

  def install
    bin.install "networkProfiles"
  end
end
