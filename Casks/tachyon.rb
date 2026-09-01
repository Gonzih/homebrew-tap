cask "tachyon" do
  version "1.11"
  sha256 "9c92983e86f10dec4bf1fd2d06ef8bcea85de3678fbd8cc945f61a6577ad6a69"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
