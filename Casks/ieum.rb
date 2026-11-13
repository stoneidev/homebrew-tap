cask "ieum" do
  version "0.8.0"
  sha256 "adfd6dcf6ddca96a5d3f91ddd76c9fb03cffa2899e073b1b30a85b0056a21662"

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
