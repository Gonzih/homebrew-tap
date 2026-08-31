cask "tachyon" do
  version "1.9"
  sha256 "f966fd23eb989c11eff9da89ae0c1c8d66332a0c16bca935be2a4b6dbe240471"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
