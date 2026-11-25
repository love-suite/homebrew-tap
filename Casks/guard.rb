cask "guard" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-guard/releases/download/v#{version}/Suite-Guard-#{version}.zip"
  name "Suite Guard"
  desc "Puts the system Dock and Finder's desktop back should an app that hid them vanish"
  homepage "https://github.com/love-suite/suite-guard"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Suite Guard.app"

  zap trash: [
    "~/Library/Preferences/local.suite.guard.plist",
  ]
end
