class SwitchboardFyi < Formula
  desc "Local model-routing CLI for Codex and Claude Code"
  homepage "https://www.switchboard.fyi"
  url "https://registry.npmjs.org/switchboard-fyi/-/switchboard-fyi-0.2.13.tgz"
  sha256 "3a75e000dea4321898de6dc5c287f2bf70ac840b25419fcfa0a724f6990bb2e1"
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
