cask "rune@beta" do
  version "1.0.0-beta.2"
  sha256 "f31a8abcf83e9996c119eb4ec330778d9ab327aa029338cd815459729a4100de"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/)
  end
  
  url "https://github.com/Losses/rune/releases/download/v#{version}/Rune-v#{version}-macOS.zip"
  name "Rune"
  desc "Experience timeless melodies with a music player"
  homepage "https://github.com/Losses/rune"

  auto_updates true
  
  app "Rune.app", target: "Rune@beta.app"
  binary "#{appdir}/Rune.app/Contents/MacOS/Rune"

  zap trash: [
    "/Users/hexagram/Library/Application Scripts/ci.not.rune",
    "/Users/hexagram/Library/Containers/ci.not.rune",
  ]
end
