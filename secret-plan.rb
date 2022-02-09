# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SecretPlan < Formula
  desc "For secret value diff and save tool.(e.g aws secretsmanager)"
  homepage "https://github.com/yutachaos/secret-plan"
  version "0.0.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yutachaos/secret-plan/releases/download/v0.0.31/secret-plan_0.0.31_darwin_arm64.zip"
      sha256 "6cd4e13fff361160cc6f5146e3361a9da676908ed4769da072c86e8630d203a9"

      def install
        bin.install Dir['secret-plan']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yutachaos/secret-plan/releases/download/v0.0.31/secret-plan_0.0.31_darwin_amd64.zip"
      sha256 "b3a7c0703ae4c1eb6b7fbe11ecb3897ef61773e98d6060e919321a40ca132896"

      def install
        bin.install Dir['secret-plan']
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yutachaos/secret-plan/releases/download/v0.0.31/secret-plan_0.0.31_linux_arm64.zip"
      sha256 "464dbfaadf897faebbfe1774363da0bd5a4706d9dafbd00e3acc2ef01ecd4d20"

      def install
        bin.install Dir['secret-plan']
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yutachaos/secret-plan/releases/download/v0.0.31/secret-plan_0.0.31_linux_amd64.zip"
      sha256 "d4b21493f5ba7d25ffa0468da43beb954f4872a326af55e10d8ae2951bb8d8b2"

      def install
        bin.install Dir['secret-plan']
      end
    end
  end

  test do
    system "#{bin}/secret-plan"
  end
end
