cask "tachyon" do
  version "1.0"
  sha256 "ebae68eec59c428379fc176ed6285a9df832695b5755caa7b7e2b861a3cd45c9"

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
