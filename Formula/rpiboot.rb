class Rpiboot < Formula
  desc "Raspberry Pi USB booting code, moved from tools repository"
  homepage "https://github.com/raspberrypi/usbboot"
  url "https://github.com/raspberrypi/usbboot.git", using: :git, shallow: true
  sha256 "2f02dbe9a88e9dfad5f05e513e1f30afd47b1575820f7c3b09665dfefc45bbaa"
  license "Apache-2.0"
  version "20221215-105525"

  depends_on "libusb"
  depends_on "pkg-config"

  def install
    system "git", "submodule", "init"
    system "git", "submodule", "update", "--recursive"
    system "make"
    bin.install "rpiboot"
    prefix.install Dir["*"]
  end

  def caveats
    <<~EOS
      To run rpiboot, you may need to use sudo:
        sudo rpiboot -d #{prefix}/mass-storage-gadget64
    EOS
  end

  test do
    system "#{bin}/rpiboot", "--help"
  end
end
