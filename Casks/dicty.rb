cask "dicty" do
  version "1.0.74"
  sha256 "fc30bd83a0aeed3b69cd540fe8c212b49f76b44b797adc93c81be99ce8d44d95"

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
