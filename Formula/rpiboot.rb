class Rpiboot < Formula
  desc "Tool to boot Raspberry Pi devices over USB"
  homepage "https://github.com/raspberrypi/usbboot"
  url "https://github.com/raspberrypi/usbboot.git",
      :using => :git,
      :revision => "HEAD",
      :shallow => false
  version "1.0.0"

  depends_on "libusb"
  depends_on "pkg-config"

  def install
    system "git", "clone", "--recurse-submodules", "--shallow-submodules", "--depth=1", "https://github.com/raspberrypi/usbboot", "usbboot"
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
