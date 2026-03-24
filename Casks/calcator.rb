cask "calcator" do
  version "0.1.4"
  sha256 "99d5425838f16a1b94bcf76cf1d81b55283dd016108da854a3420b16f8f5d197"

  url "https://calcator.app/downloads/Calcator-#{version}.dmg"
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
