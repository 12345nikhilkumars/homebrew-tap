cask "hudku" do
  version "0.0.2"
  sha256 "695191593932934e95168e2423caeb3e8549dd7fda8985ad8fcb79c8a982f435"

  url "https://github.com/12345nikhilkumars/hudku/releases/download/v#{version}/Hudku-#{version}.dmg"
  name "Hudku"
  desc "Tiny, fully native macOS launcher"
  homepage "https://github.com/12345nikhilkumars/hudku"

  depends_on macos: :tahoe

  app "Hudku.app"

  uninstall quit: "com.hudku.app"

  caveats <<~EOS
    Hudku is ad-hoc signed and not notarized. If macOS blocks the first launch, run:
      xattr -d com.apple.quarantine "#{appdir}/Hudku.app"
  EOS
end
