cask "dicty" do
  version "1.0.47-1"
  sha256 "f8cc08464480465bf0a875f5d227c86aa62820c0ad8a1756ebd5054dc0f83947"

  url "https://github.com/dicty-io/dicty/releases/download/v#{version}/Dicty.dmg"
  name "Dicty"
  desc "Voice-to-text dictation and documentation assistant"
  homepage "https://dicty.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dicty.app"

  zap trash: [
    "~/Library/Application Support/Dicty",
    "~/Library/Caches/com.antigravity.Dicty",
    "~/Library/Caches/com.kazmin.DictyClient",
    "~/Library/Preferences/com.antigravity.Dicty.plist",
    "~/Library/Preferences/com.kazmin.DictyClient.plist",
    "~/Library/Saved Application State/com.antigravity.Dicty.savedState",
  ]
end
