cask "maclip" do
  version "0.2.1"
  sha256 "d5b4cb9c70ff5f0efacb8103c09e93c644dd84303afc1cca0b4096e02ec8c9ab"

  url "https://storage.googleapis.com/maclip-releases/dmg/MaClip-#{version}.dmg"
  name "MaClip"
  desc "Ultimate macOS screenshot app with workflow automation"
  homepage "https://www.caprer.co.jp/maclip/"

  depends_on macos: ">= :sequoia"

  app "MaClip.app"

  zap trash: [
    "~/Library/Application Support/MaClip",
    "~/Library/Preferences/jp.co.caprer.maclip.plist",
  ]
end
