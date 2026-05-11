class Usageboard < Formula
  desc "macOS menu bar app for API usage tracking"
  homepage "https://github.com/marsmay/UsageBoard"
  version "0.1.22"
  sha256 "f5b1c0ca2106179330ceeb22d3e5ac2d7e1d66ee3042c8869fabd5a58111e6d4"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip"

  depends_on macos: ">= :ventura"

  app "UsageBoard.app"

  def caveats
    <<~EOS
      UsageBoard will appear in your menu bar after launch.
    EOS
  end
end
