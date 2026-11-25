cask "clipboard" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-clipboard/releases/download/v#{version}/Clipboard-#{version}.zip"
  name "Clipboard"
  desc "Clipboard history, as Windows' Win+V, on a held Command V"
  homepage "https://github.com/love-suite/suite-clipboard"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"
  depends_on cask: ["love-suite/tap/guard"]

  app "Clipboard.app"

  zap trash: [
    "~/Library/Preferences/local.suite.clipboard.plist",
  ]
end
