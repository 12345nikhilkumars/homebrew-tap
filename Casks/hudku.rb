cask "hudku" do
  version "0.0.1"
  sha256 "65a622171e751d1eb63856755e8cef0131d1734bc5de864399053263954d96a3"

  url "https://github.com/12345nikhilkumars/hudku/releases/download/v#{version}/Hudku-#{version}.dmg"
  name "Hudku"
  desc "Tiny, fully native macOS launcher"
  homepage "https://github.com/12345nikhilkumars/hudku"

  depends_on macos: ">= :tahoe"

  app "Hudku.app"

  uninstall quit: "com.hudku.app"

  caveats <<~EOS
    Hudku is ad-hoc signed and not notarized. If macOS blocks the first launch, run:
      xattr -d com.apple.quarantine "#{appdir}/Hudku.app"
  EOS
end
