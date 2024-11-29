cask "rune@alpha" do
    arch arm: "aarch64", intel: "x64"
  
    version "v0.0.0-alpha.16"
    sha256 :no_check
      
    url "https://github.com/Losses/rune/releases/download/v0.0.0-alpha.16/Rune-v0.0.0-alpha.16-1c02e7c-macOS.dmg"
        verified: "github.com/Losses/rune/"
    name "Rune"
    desc "The alpha version of rune player."
    homepage "https://github.com/Losses/rune"
  
    app "Rune.app"
    binary "#{appdir}/Rune.app/Contents/MacOS/Rune"
  
    zap trash: [
        
    ]
  end
  
