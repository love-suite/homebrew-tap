cask "desktop" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-desktop/releases/download/v#{version}/Desktop-#{version}.zip"
  name "Desktop"
  desc "Desktop in place of Finder's"
  homepage "https://github.com/love-suite/suite-desktop"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on cask: ["love-suite/tap/guard"]

  app "Desktop.app"

  zap trash: [
    "~/Library/Preferences/local.suite.desktop.plist",
  ]
end
