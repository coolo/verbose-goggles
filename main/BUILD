# vim: set tabstop=4 softtabstop=4 shiftwidth=4 expandtab:

cc_library(
    name = "test_lib",
    srcs = ["test_lib.cpp"],
    hdrs = ["test_lib.hpp"],
)

cc_library(
    name = "header",
    hdrs = ["test_lib.hpp"],
)

cc_binary(
    name = "libtest.so",
    srcs = ["test_lib.cpp"],
    linkshared = 1,
    deps = [":header"],
)

cc_binary(
    name = "simple_hello_static",
    srcs = ["simple_hello.cc"],
    linkopts = ["-pthread"],
    deps = [":test_lib"],
)

cc_binary(
    name = "simple_hello_dynamic",
    srcs = [
        "simple_hello.cc",
        ":libtest.so",
    ],
    deps = [
        ":header",
    ],
)

cc_binary(
    name = "hello_world",
    srcs = [ "hello_world.cc" ],
)
