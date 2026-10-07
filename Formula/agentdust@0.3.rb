class AgentdustAT03 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v0.3.0/agentdust-0.3.0-darwin-arm64.tar.gz"
  version "0.3.0"
  sha256 "3e62fa4e7611c9a8abd7c9420e663092ab6bc0aca74b788542930cca48dff2ea"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
