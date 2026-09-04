cask "tachyon" do
  version "1.13"
  sha256 "d3a4017f468ffec71cc8e0a9e76156d352f6aab4a051f8c6aae00cdc6472b722"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"
  binary "#{appdir}/Tachyon.app/Contents/MacOS/Tachyon", target: "tachyon"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
