cask "calcator" do
  version "0.1.0"
  sha256 "00a7f371c1b2de6b1c36ea3eaf27c18c278bffbc9d2e69f5dbc902cc55f049ea"

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
