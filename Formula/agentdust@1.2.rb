class AgentdustAT12 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.2.0/agentdust-1.2.0-darwin-arm64.tar.gz"
  version "1.2.0"
  sha256 "93699286c1e6cf51c9af70b05ab3d9593c1143249814ae618d267008eb2bcd6e"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
