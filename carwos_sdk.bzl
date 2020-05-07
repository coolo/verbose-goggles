load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def carwos_sdk():
    if "carwos_sdk" not in native.existing_rules():
        http_archive(
            name = 'carwos_sdk',
            url = 'https://download.opensuse.org/repositories/home:/coolo:/carwos/standard/image.sdk-1.0-17.1.tar.xz',
            build_file = '//:carwos_sdk.BUILD',
            sha256 = "6b6922a8c3861f20294c4ffe082dfa6e396799271a2c46b265df7addcaff4bbf",
            strip_prefix = "sdk",
        )
