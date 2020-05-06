package(default_visibility = ["//visibility:public"])

load(":cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(name = "carwos_toolchain_config")

cc_toolchain_suite(
    name = "carwos",
    toolchains = {
        "atom": ":carwos_toolchain",
    },
)

filegroup(
    name = "all",
    srcs = [
        "emcc.sh",
        "@carwos_sdk//:all",
    ],
)

cc_toolchain(
    name = "carwos_toolchain",
    toolchain_identifier = "carwos-toolchain",
    toolchain_config = ":carwos_toolchain_config",
    all_files = ":all",
    compiler_files = ":all",
    dwp_files = ":empty",
    linker_files = ":all",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)
