load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def carwos_sdk():
    if "carwos_sdk" not in native.existing_rules():
        http_archive(
            name = 'carwos_sdk',
            url = 'https://stephan.kulow.org/sdk-without-glibc.tar.xz',
            build_file = '//:carwos_sdk.BUILD',
            sha256 = '0bbeaa89f2c7ef2416221d4c3a8447b7daf7192292becad625d8f3d32bb9ccd1',
            strip_prefix = "sdk",
        )
