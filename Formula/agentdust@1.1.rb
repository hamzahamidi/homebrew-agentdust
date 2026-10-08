class AgentdustAT11 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.1.0/agentdust-1.1.0-darwin-arm64.tar.gz"
  version "1.1.0"
  sha256 "2cb345dc4e1a81a0de751acc4176620cbd95bd4b1549205340269dadb498f643"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
