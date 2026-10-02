cask "tachyon" do
  version "1.15"
  sha256 "7d985c6dcfaf2710c5f99b0302be63c2160487dadf2b5cc18a9a0ffd7b8d5ccb"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"
  binary "#{appdir}/Tachyon.app/Contents/MacOS/Tachyon", target: "tachyon"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
