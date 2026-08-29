cask "tachyon" do
  version "1.7"
  sha256 "1294e1072fcb324df2ac95171a0019e4a4c4f5635eb2d433b4e1b4dbb33d50af"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh"

  depends_on macos: :sequoia

  app "Tachyon.app"

  zap trash: [
    "~/Library/Preferences/dev.gonzih.tachyon.plist",
  ]
end
