cask "ieum" do
  version "0.4.1"
  sha256 "c99e04182d5ef92eab47991677a5615fc0c0a6783aea46b03520710b41b1a490"

  url "https://github.com/stoneidev/ieum/releases/download/v#{version}/Ieum.dmg"
  name "Ieum"
  desc "Live captions and English-Korean translation for meetings, on-device"
  homepage "https://ieum.calmwork.today/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Ieum.app"

  zap trash: "~/Library/Preferences/today.calmwork.ieum.plist"
end
