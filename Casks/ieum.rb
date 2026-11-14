cask "ieum" do
  version "0.13.0"
  sha256 "89d81570ba280e5521fd8f39fd2fab706fbc1b971f2840a6714a5851c415215a"

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
