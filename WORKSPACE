load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = 'carwos_sdk',
    url = 'https://stephan.kulow.org/image.sdk-1.0-16.1.tar.bz2',
    sha256 = "42db0a8afde8e5788c2627b988c3412278ac2074f73e5e62c0152d881b3c8647",
    build_file = '//:emscripten-clang.BUILD',
    strip_prefix = "sdk",
)
