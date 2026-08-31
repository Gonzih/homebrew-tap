cask "tachyon" do
  version "1.8"
  sha256 "f3fdaa29e5ef2e4ccfaa86c2a738ae49fb41fd11c6ec3dc5b83752d57016f985"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
