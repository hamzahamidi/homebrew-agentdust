class AgentdustAT16 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.6.1/agentdust-1.6.1-darwin-arm64.tar.gz"
  version "1.6.1"
  sha256 "d7b9ba2512b4594515065144e50818f1db17d1fc56af75a590d3039f54648ce2"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
