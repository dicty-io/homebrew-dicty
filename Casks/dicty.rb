cask "dicty" do
  version "1.0.23"
  sha256 "d02767e59d4e2e4ce09cd9f48c49e38647e0c1c76fe0cdb21958326ec374c7e4"

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
