cask "awake" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-awake/releases/download/v#{version}/Awake-#{version}.zip"
  name "Awake"
  desc "Keeps the Mac awake, for a while or until stopped, even with the lid closed"
  homepage "https://github.com/love-suite/suite-awake"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on cask: ["love-suite/tap/guard"]

  app "Awake.app"

  zap trash: [
    "~/Library/Preferences/local.suite.awake.plist",
  ]
end
