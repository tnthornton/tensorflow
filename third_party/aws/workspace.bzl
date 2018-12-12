"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.7.17.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.7.17.tar.gz",
        ],
        sha256 = "1398a04fe21dabc4e543eca1f9ebc60070d80641c32bec5e781e5ce76e35c966",
        strip_prefix = "aws-sdk-cpp-1.0.90",
        build_file = "//third_party/aws:BUILD.bazel",
    )
