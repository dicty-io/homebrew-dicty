cask "dicty" do
  version "1.0.56"
  sha256 "ac8362c708710c097a223a374435bbf8e933a0a4c872ab089ad17d57986fc2bc"

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
