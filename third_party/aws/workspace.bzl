"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.6.53.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.6.53.tar.gz",
        ],
        sha256 = "80cb2e1d7012897832dee5d2465ac85b8ad052b520ba4d9bf03aa92e57f7406d",
        strip_prefix = "aws-sdk-cpp-1.6.53",
        build_file = "//third_party/aws:BUILD.bazel",
    )
