cask "tachyon" do
  version "1.3"
  sha256 "f5cd59f928005dfcf3c8043ce71447fa4760dcb2475dcb30ce9b4ab8b08b4d17"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI coding harnesses"
  homepage "https://tachyon.maksim.sh"

  depends_on macos: :sequoia

  app "Tachyon.app"

  zap trash: [
    "~/Library/Preferences/dev.gonzih.tachyon.plist",
  ]
end
