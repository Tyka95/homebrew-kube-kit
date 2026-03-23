class Kubekit < Formula
  desc "Interactive terminal UI toolkit for Kubernetes and AWS workflows"
  homepage "https://github.com/Tyka95/kube-kit"
  url "https://github.com/Tyka95/kube-kit.git", tag: "v0.1.4"
  version "0.1.4"
  license "MIT"

  depends_on "gum"

  def install
    libexec.install "lib"
    libexec.install "kubekit.sh"
    chmod 0755, libexec/"kubekit.sh"
    bin.install_symlink libexec/"kubekit.sh" => "kubekit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubekit --version")
  end
end
