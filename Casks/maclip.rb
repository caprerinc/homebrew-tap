cask "maclip" do
  version "0.1.1"
  sha256 "e2cf1cfc47bca49c4714e715a9446c7d7a3f1c3f6e98fc01d147c78ab0b63c7c"

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
