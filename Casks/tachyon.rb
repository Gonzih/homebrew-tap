cask "tachyon" do
  version "1.1"
  sha256 "10aca4702ab521a872c40fa12960eac8dadc45afd57c9d9157b08302b3d8cb11"

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
