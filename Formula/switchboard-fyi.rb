class SwitchboardFyi < Formula
  desc "Local model-routing CLI for Codex and Claude Code"
  homepage "https://www.switchboard.fyi"
  url "https://registry.npmjs.org/switchboard-fyi/-/switchboard-fyi-0.2.17.tgz"
  sha256 "5fe02fef624720005ef2aa22edc53a1326e05b73af13acb6b6b8ee6c14bc4223"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args(prefix: libexec)
    bin.install_symlink libexec/"bin/switchboard"
    bin.install_symlink libexec/"bin/switchboard-fyi"
    bin.install_symlink libexec/"bin/switchboard-gateway"
    bin.install_symlink libexec/"bin/switchboard-inspector"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/switchboard version")
  end
end
