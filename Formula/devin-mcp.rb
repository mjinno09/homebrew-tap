class DevinMcp < Formula
  desc "MCP server for creating and managing Devin AI sessions"
  homepage "https://github.com/mjinno09/devin-mcp"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mjinno09/devin-mcp/releases/download/v#{version}/devin-mcp-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f8b0bd3e00a41bb535db04f04163c567b707b9b8777a14c32075842a5516bf6e"
    else
      url "https://github.com/mjinno09/devin-mcp/releases/download/v#{version}/devin-mcp-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "dc66563680822e62270d10895cef65c73d7b3588e9302791aad255cec65a1fdd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mjinno09/devin-mcp/releases/download/v#{version}/devin-mcp-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da0b468b30e3269ad591fbc29b08d4e2e61368a1adc21bdab8d72f4a8715eeba"
    end
  end

  def install
    bin.install "devin-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devin-mcp --version")
  end
end
