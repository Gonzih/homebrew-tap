cask "tachyon" do
  version "1.5"
  sha256 "0c99e1aa1ca5b7cd6ac709d0d9f10801c3bf1d68ed6c39d8c38bba8e1596ca1f"

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
