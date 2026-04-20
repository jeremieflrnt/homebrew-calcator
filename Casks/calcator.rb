cask "calcator" do
  version "0.2.4"
  sha256 "1deb50f8bbf8eddb7771420a1acdf51f72f572d71be4bb886302513caaa9c080"

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
