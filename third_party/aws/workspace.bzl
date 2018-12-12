"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/tnthornton/aws-sdk-cpp/archive/1.5.8-modified.tar.gz",
            "https://github.com/tnthornton/aws-sdk-cpp/archive/1.5.8-modified.tar.gz",
        ],
        sha256 = "7d9585e37ce11b0b8c0baa482eaaf59e2bdc38f61da20070b6c3b0f11a1d12b0",
        strip_prefix = "aws-sdk-cpp-1.5.8-modified",
        build_file = "//third_party/aws:BUILD.bazel",
    )
