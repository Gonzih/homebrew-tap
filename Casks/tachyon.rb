cask "tachyon" do
  version "1.14"
  sha256 "65594e048149845bb6a18524eb7119a105b1c47529cb169a89f7c73ba03a7fd6"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"
  binary "#{appdir}/Tachyon.app/Contents/MacOS/Tachyon", target: "tachyon"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
