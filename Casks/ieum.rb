cask "ieum" do
  version "0.15.2"
  sha256 "290a89662cf3d917393ab6b1b9d6da1e3f4d068f33bc29fac0a7fe64f232ef2a"

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
