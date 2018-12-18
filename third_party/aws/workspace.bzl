"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.6.0.tar.gz",
            "https://github.com/aws/aws-sdk-cpp/archive/1.6.0.tar.gz",
        ],
        sha256 = "7983ac654b380e926ee17b397d9b3f2e20bf95c7fa21c5262800ef4ea47eb811",
        strip_prefix = "aws-sdk-cpp-1.6.0",
        build_file = "//third_party/aws:BUILD.bazel",
    )
