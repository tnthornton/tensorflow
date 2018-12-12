"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.0.90.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.0.90.tar.gz",
        ],
        sha256 = "f599b57aec4f03ad696044dd430b2d201864113937353adc346f53ad47991319",
        strip_prefix = "aws-sdk-cpp-1.0.90",
        build_file = "//third_party/aws:BUILD.bazel",
    )
