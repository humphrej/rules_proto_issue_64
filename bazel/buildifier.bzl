load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")


def buildifier_dependencies():
  http_file(
      name = "buildifier",
      executable = True,
      sha256 = "d7d41def74991a34dfd2ac8a73804ff11c514c024a901f64ab07f45a3cf0cfef",
      urls = ["https://github.com/bazelbuild/buildtools/releases/download/0.11.1/buildifier"],
  )

  http_file(
      name = "buildifier_osx",
      executable = True,
      sha256 = "3cbd708ff77f36413cfaef89cd5790a1137da5dfc3d9b3b3ca3fac669fbc298b",
      urls = ["https://github.com/bazelbuild/buildtools/releases/download/0.11.1/buildifier.osx"],
  )



