cask "calcator" do
  version "0.1.3"
  sha256 "735e5cf452b72240dda1fb19a3091806b2274dcceb5f0ff57f4eb5c9195809c3"

  url "https://github.com/jeremieflrnt/calcator-release/releases/download/v#{version}/Calcator.dmg"
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
