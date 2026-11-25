cask "viewer" do
  version "27.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/love-suite/suite-viewer/releases/download/v#{version}/Viewer-#{version}.zip"
  name "Viewer"
  desc "Picture and PDF viewer going through a folder in Explorer's order"
  homepage "https://github.com/love-suite/suite-viewer"

  # The app updates itself from its own releases.
  auto_updates true
  depends_on macos: ">= :ventura"

  app "Viewer.app"

  zap trash: [
    "~/Library/Preferences/local.suite.viewer.plist",
  ]
end
