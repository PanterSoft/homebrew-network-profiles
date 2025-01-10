class Networkprofiles < Formula
  desc ""
  homepage "https://github.com/PanterSoft/network-profiles"
  url "https://github.com/PanterSoft/network-profiles/releases/download/v0.0.4/network-profiles-v0.0.4.tar.gz"
  sha256 "5d831a55f858220891226eb866b405534f3ec37512f79df3ce59a770d83704de"
  license "MIT"
  version "v0.0.4"

  def install
    prefix.install "NetworkProfiles.app"
    bin.write_exec_script "#{prefix}/NetworkProfiles.app/Contents/MacOS/NetworkProfiles"
  end

  def post_install
    system "ln", "-sf", "#{prefix}/NetworkProfiles.app", "/Applications/NetworkProfiles.app"
  end
end
