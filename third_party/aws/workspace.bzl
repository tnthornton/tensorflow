"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.7.18.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.7.18.tar.gz",
        ],
        sha256 = "0c56d3acb5ed64b3ec64671cccd319aa9c64908165693d88fc00b3029aace7e0",
        strip_prefix = "aws-sdk-cpp-1.7.18",
        build_file = "//third_party/aws:BUILD.bazel",
    )
