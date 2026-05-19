class LoadtestOrchestrator < Formula
  desc "YAML-driven k6 load test orchestrator"
  homepage "https://github.com/Kosw6/loadtest-orchestrator-release"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kosw6/loadtest-orchestrator-release/releases/download/v1.0.0/loadtest-orchestrator-1.0.0-darwin-arm64"
      sha256 "bd9b26c6bbca4a119f01a46de14a82928515894e275df0ed3d82f6ee046ff813"
    end
    on_intel do
      url "https://github.com/Kosw6/loadtest-orchestrator-release/releases/download/v1.0.0/loadtest-orchestrator-1.0.0-darwin-amd64"
      sha256 "50183801e205e964a55167f4f95bd8032591f536ef467bddbbe44ded34b3c0c9"
    end
  end

  def install
    on_arm do
      bin.install "loadtest-orchestrator-1.0.0-darwin-arm64" => "loadtest-orchestrator"
    end
    on_intel do
      bin.install "loadtest-orchestrator-1.0.0-darwin-amd64" => "loadtest-orchestrator"
    end
  end

  test do
    assert_match "Usage", shell_output("#{bin}/loadtest-orchestrator --help 2>&1", 2)
  end
end
