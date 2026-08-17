cask "dicty" do
  version "1.0.12"
  sha256 "6f0bddd40f0cb50bc48b5162f3a3317b1272cacd8a7046c53ebec1feb39e7845"

  url "https://github.com/dicty-io/dicty/releases/download/v#{version}/Dicty.dmg"
  name "Dicty"
  desc "Voice-to-text dictation and documentation assistant"
  homepage "https://dicty.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Dicty.app"

  zap trash: [
    "~/Library/Application Support/Dicty",
    "~/Library/Caches/com.kazmin.DictyClient",
    "~/Library/Preferences/com.kazmin.DictyClient.plist",
  ]
end
