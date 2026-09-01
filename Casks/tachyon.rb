cask "tachyon" do
  version "1.10"
  sha256 "c52b3847c4a648c2f2222eca0b84282258a60da413d4d4395362020d986739d0"

  url "https://github.com/Gonzih/tachyon/releases/download/v#{version}/Tachyon-#{version}.zip"
  name "Tachyon"
  desc "Ambient usage rings for AI providers"
  homepage "https://tachyon.maksim.sh/"

  depends_on macos: :sequoia

  app "Tachyon.app"

  zap trash: "~/Library/Preferences/dev.gonzih.tachyon.plist"
end
