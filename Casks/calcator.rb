cask "calcator" do
  version "0.2.3"
  sha256 "49692e799a5986a4e9bcdc8fe1719335a3f57d1912fcbf7caa9ebd6b4c884b0a"

  url "https://calcator.app/downloads/Calcator_#{version}_aarch64.dmg"
  name "Calcator"
  desc "Calculator notebook app for macOS"
  homepage "https://calcator.app"

  # Version from the download link on calcator.app
  livecheck do
    url :homepage
    regex(/Calcator-(\d+(?:\.\d+)+)\.dmg/)
  end

  # Install the app
  app "Calcator.app"

  # Optional: Clean up files when user runs 'brew uninstall --zap calcator'
  zap trash: [
    "~/Library/Application Support/Calcator",
    "~/Library/Caches/com.jeremieflrnt.calcator",
    "~/Library/Preferences/com.jeremieflrnt.calcator.plist",
    "~/Library/Saved Application State/com.jeremieflrnt.calcator.savedState",
  ]
end
