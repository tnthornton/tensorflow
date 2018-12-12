"""loads the aws library, used by TF."""

# load("//third_party:repo.bzl", "third_party_http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def repo():
    new_git_repository(
        name = "aws",
        # urls = [
        #     "https://mirror.bazel.build/github.com/aws/aws-sdk-cpp/archive/1.5.7.tar.gz",
        #     "https://github.com/aws/aws-sdk-cpp/archive/1.5.7.tar.gz",
        # ],
        remote = "https://github.com/tnthornton/aws-sdk-cpp.git",
        commit = "1e5d3ed709b2bc0977c4822d64b03d8391cce281",
        # strip_prefix = "aws-sdk-cpp-1.5.7",
        build_file = "//third_party/aws:BUILD.bazel",
    )
