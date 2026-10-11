class Agentdust < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.8.0/agentdust-1.8.0-darwin-arm64.tar.gz"
  version "1.8.0"
  sha256 "92b6887e1223357c916576acec45570fcad9dda3bb8f83b8349395669a06967a"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
