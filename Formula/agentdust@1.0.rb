class AgentdustAT10 < Formula
  desc "Finds and cleans processes that AI coding agents leave behind"
  homepage "https://github.com/hamzahamidi/agentdust"
  url "https://github.com/hamzahamidi/agentdust/releases/download/v1.0.0/agentdust-1.0.0-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "58ff05161f5472562f15da90cbae5401a847727258b0149ae38be7505912ba27"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "agentdust"
  end

  test do
    assert_match "agentdust #{version}", shell_output("#{bin}/agentdust version")
  end
end
