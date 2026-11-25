cask "settings" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-settings/releases/download/v#{version}/Suite-Settings-#{version}.zip"
  name "Suite Settings"
  desc "Settings of the apps of Love Suite"
  homepage "https://github.com/love-suite/suite-settings"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Suite Settings.app"

  zap trash: [
    "~/Library/Preferences/local.suite.settings.plist",
  ]
end
