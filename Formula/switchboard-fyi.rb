class SwitchboardFyi < Formula
  desc "Local model-routing CLI for Codex and Claude Code"
  homepage "https://www.switchboard.fyi"
  url "https://registry.npmjs.org/switchboard-fyi/-/switchboard-fyi-0.2.0.tgz"
  sha256 "30cae2ac798908a8a8efafe52ef4c243b5f18918de628af5347c6f5fc5f940c3"
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
