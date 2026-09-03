cask "tachyon" do
  version "1.12"
  sha256 "9324ad6b717f779932f355684e134eef2f5bae40b885e681a6cecaef64cb8176"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"
  binary "#{appdir}/Tachyon.app/Contents/MacOS/Tachyon", target: "tachyon"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
