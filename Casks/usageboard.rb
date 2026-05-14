class Usageboard < Formula
  desc "macOS menu bar app for API usage tracking"
  homepage "https://github.com/marsmay/UsageBoard"
  version "0.1.23"
  sha256 "3413b8d8ed0f06db915284e4aaabaedfca9fbfaca2f857f17b849084f7083f5c"

  url "https://may.ltd/usageboard/UsageBoard-#{version}.zip"

  depends_on macos: ">= :ventura"

  app "UsageBoard.app"

  def caveats
    <<~EOS
      UsageBoard will appear in your menu bar after launch.
    EOS
  end
end
