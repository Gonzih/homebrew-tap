cask "tachyon" do
  version "1.4"
  sha256 "ed4d58531a710e19935b88a6b42bc7a9d497b08b91d5bfa08cdf9cbbeef661f7"

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
