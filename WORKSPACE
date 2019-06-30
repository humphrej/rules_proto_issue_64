workspace(name = "grpc_proto_example")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

load("//bazel:buildifier.bzl", "buildifier_dependencies")
buildifier_dependencies()

# GRPC and Protobuf
#
http_archive(
    name = "build_stack_rules_proto",
    urls = ["https://github.com/stackb/rules_proto/archive/b93b544f851fdcd3fc5c3d47aee3b7ca158a8841.tar.gz"],
    sha256 = "c62f0b442e82a6152fcd5b1c0b7c4028233a9e314078952b6b04253421d56d61",
    strip_prefix = "rules_proto-b93b544f851fdcd3fc5c3d47aee3b7ca158a8841",
)

load("@build_stack_rules_proto//:deps.bzl", "io_grpc_grpc_java")
io_grpc_grpc_java()

load("@io_grpc_grpc_java//:repositories.bzl", "grpc_java_repositories")
grpc_java_repositories(omit_com_google_protobuf = True)

load("@build_stack_rules_proto//java:deps.bzl", "java_grpc_library")
java_grpc_library()

load("@build_stack_rules_proto//github.com/grpc/grpc-web:deps.bzl", "ts_grpc_compile")
ts_grpc_compile()

load("@io_bazel_rules_closure//closure:defs.bzl", "closure_repositories")

closure_repositories(
    omit_com_google_protobuf = True,
)

# Google API Protocol Buffers
#
http_archive(
    name = "googleapis",
    sha256 = "7b6ea252f0b8fb5cd722f45feb83e115b689909bbb6a393a873b6cbad4ceae1d",
    url = "https://github.com/googleapis/googleapis/archive/143084a2624b6591ee1f9d23e7f5241856642f4d.zip",
    strip_prefix = "googleapis-143084a2624b6591ee1f9d23e7f5241856642f4d",
    build_file = "@//:BUILD.googleapis",
)

# Startup-OS
#
http_archive(
    name = "startupos",
    sha256 = "abb9cef989265622273d504376a17d7f7ba4f89afd26405ac61e251248efc588",
    strip_prefix = "startup-os-bb205ed849a51122cc09c663e2bab153e4319d60",
    urls = ["https://github.com/google/startup-os/archive/bb205ed849a51122cc09c663e2bab153e4319d60.tar.gz"],
)

http_archive(
    name = "startupos_binaries",
    strip_prefix = "startupos-binaries-76819481d60ad379ea1b4890998cd3bb4554e20c",
    urls = ["https://github.com/oferb/startupos-binaries/archive/76819481d60ad379ea1b4890998cd3bb4554e20c.tar.gz"],
)

# Maven
#
load("//third_party/maven:workspace.bzl", "maven_dependencies")
maven_dependencies()


