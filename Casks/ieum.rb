cask "ieum" do
  version "0.14.4"
  sha256 "18f40536d424d3509591dbe0b4c22d64bf62ccf0b4ea975ca2d8c52219e9f860"

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
