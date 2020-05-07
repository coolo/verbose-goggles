Based on bazel example and patched according https://docs.bazel.build/versions/master/tutorial/cc-toolchain-config.html
and then followed to patch to use carwos sdk

Try
bazel build --sandbox_debug --config=carwos --verbose_failures //main/...
