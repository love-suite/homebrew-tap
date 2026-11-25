cask "bar" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-bar/releases/download/v#{version}/Bar-#{version}.zip"
  name "Bar"
  desc "Dock in place of the system one"
  homepage "https://github.com/love-suite/suite-bar"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on cask: ["love-suite/tap/guard"]

  app "Bar.app"

  zap trash: [
    "~/Library/Preferences/local.suite.bar.plist",
  ]
end
