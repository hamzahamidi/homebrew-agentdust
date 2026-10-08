class AgentdustAT13 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.3.0/agentdust-1.3.0-darwin-arm64.tar.gz"
  version "1.3.0"
  sha256 "3e884767ef250c722c6e84c92e7ed341428eb4811df7f857b9dc052e91ccc902"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
