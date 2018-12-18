"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.5.25.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.5.25.tar.gz",
        ],
        sha256 = "687ada9ae2317ed02d2fd673ab6636b28f6e072efb1f4e8741f66ef4a210012b",
        strip_prefix = "aws-sdk-cpp-1.5.25",
        build_file = "//third_party/aws:BUILD.bazel",
    )
