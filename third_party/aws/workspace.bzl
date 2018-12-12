"""loads the aws library, used by TF."""

load("//third_party:repo.bzl", "third_party_http_archive")

def repo():
    third_party_http_archive(
        name = "aws",
        urls = [
            "https://mirror.bazel.build/github.com/tnthornton/aws-sdk-cpp/archive/1.5.7-modified.tar.gz",
            "https://github.com/tnthornton/aws-sdk-cpp/archive/1.5.7-modified1.tar.gz",
        ],
        sha256 = "840d963d0e82fd78a91d6400b9e9caf703692c96a42b9bcb8408945138bb3568",
        strip_prefix = "aws-sdk-cpp-1.5.7-modified1",
        build_file = "//third_party/aws:BUILD.bazel",
    )
