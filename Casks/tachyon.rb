cask "tachyon" do
  version "1.2"
  sha256 "e00cbedff4f3f0e059f85a3916a7c7b63b17cfc41b8b5e78d96468a95e53fa53"

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
