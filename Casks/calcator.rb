cask "calcator" do
  version "0.1.2"
  sha256 "dedb29de4586197990674b0cb7a52d8a386df154997950545a8115ac896dd7b2"

  url "https://github.com/jeremieflrnt/calcator-release/releases/download/v#{version}/Calcator-#{version}.dmg"
  name "Calcator"
  desc "Calculator notebook app for macOS"
  homepage "https://calcator.app"

  # Automatically detect new versions from GitHub releases
  livecheck do
    url "https://api.github.com/repos/jeremieflrnt/calcator-release/releases/latest"
    strategy :json do |json|
      json["tag_name"]&.delete_prefix("v")
    end
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
