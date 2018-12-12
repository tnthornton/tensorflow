"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.5.7.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.5.7.tar.gz",
        ],
        sha256 = "30574ed15952f47e3af3f19bdf7c040106ba9c1e8f323f97e0ecfdcf56a48e25",
        strip_prefix = "aws-sdk-cpp-1.5.7",
        build_file = "//third_party/aws:BUILD.bazel",
    )
