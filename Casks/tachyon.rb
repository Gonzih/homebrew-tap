cask "tachyon" do
  version "1.16"
  sha256 "b927c08176de15bd8dbffd340aec7e56f3e3864b8379a464af787d2e41873bec"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"
  binary "#{appdir}/Tachyon.app/Contents/MacOS/Tachyon", target: "tachyon"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
