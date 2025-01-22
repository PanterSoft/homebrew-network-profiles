class Rpiboot < Formula
  desc "Tool to boot Raspberry Pi devices over USB"
  homepage "https://github.com/raspberrypi/usbboot"
  url "https://github.com/raspberrypi/usbboot/archive/refs/tags/20221215-105525.tar.gz"
  version "1.0.0"
  sha256 "<SHA256_CHECKSUM>"

  depends_on "libusb"
  depends_on "pkg-config"

  def install
    tarball = Dir["*usbboot-#{version}.tar.gz"].first
    system "tar", "-xzf", tarball
    mv "usbboot-#{version}", "usbboot"
    cd "usbboot" do
      system "make"
      bin.install "rpiboot"
    end
  end

  def caveats
    <<~EOS
      To run rpiboot, you may need to use sudo:
        sudo rpiboot -d mass-storage-gadget64
    EOS
  end

  test do
    system "#{bin}/rpiboot", "--help"
  end
end
