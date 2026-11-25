cask "explorer" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-explorer/releases/download/v#{version}/Explorer-#{version}.zip"
  name "Explorer"
  desc "File manager and desktop in the spirit of Windows Explorer"
  homepage "https://github.com/love-suite/suite-explorer"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on cask: ["love-suite/tap/settings"]

  app "Explorer.app"

  zap trash: [
    "~/Library/Preferences/local.suite.explorer.plist",
  ]
end
