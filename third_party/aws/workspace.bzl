"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/tnthornton/aws-sdk-cpp/archive/1.5.7-modified.tar.gz",
            "https://github.com/tnthornton/aws-sdk-cpp/archive/1.5.7-modified.tar.gz",
        ],
        sha256 = "2497caa825a53a40960bc36ff77b8fb85cae8dbae7109c1af3400df136b8eba6",
        strip_prefix = "aws-sdk-cpp-1.5.7-modified",
        build_file = "//third_party/aws:BUILD.bazel",
    )
