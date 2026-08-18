cask "dicty" do
  version "1.0.13-1"
  sha256 "e4800bd60a2d3068b013e49450a3a75488518fe3929e33837054a3c2535528d0"

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
