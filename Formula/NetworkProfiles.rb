class Network-profiles < Formula
  desc ""
  homepage "https://github.com/PanterSoft/network-profiles"
  url "https://github.com/PanterSoft/network-profiles/releases/download/v0.0.3/network-profiles-v0.0.3.tar.gz"
  sha256 "fd91aea8bf1b231d96e927e398b11d39bdf2b6a510ae28915240b8ec1f05dcca"
  license "MIT"
  version "v0.0.3"

  def install
    bin.install "network-profiles"
  end
end
