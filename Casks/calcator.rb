cask "calcator" do
  version "0.2.2"
  sha256 "f8df57ea470fcbb8fe483f099863ae103bab6f9372780c3dc55a9ac1abcb3e6a"

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
