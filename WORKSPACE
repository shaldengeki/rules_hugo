workspace(name = "rules_hugo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

load("@rules_hugo//hugo:rules.bzl", "hugo_repository")

hugo_repository(
    name = "hugo",
    extended = True,
    version = "0.139.4",
)

http_archive(
    name = "com_github_thegeeklab_hugo_geekdoc",
    url = "https://github.com/thegeeklab/hugo-geekdoc/releases/download/v1.2.1/hugo-geekdoc.tar.gz",
    sha256 = "5e6d26fc55d5d0eff16b5816c54f063c5682c689762c0a01fefbd968f2cfe008",
    build_file_content="""
filegroup(
    name = "files",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"]
)
    """
)