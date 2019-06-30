package(default_visibility = ["//visibility:public"])

load("@build_stack_rules_proto//java:java_proto_library.bzl", "java_proto_library")
load("@build_stack_rules_proto//java:java_grpc_library.bzl", "java_grpc_library")

proto_library(
    name = "foo_proto",
    srcs = [
        "foo.proto",
    ],
    #strip_import_prefix = "//proto/proto_import_example"
)

java_proto_library(
    name = "foo_java_proto",
    deps = [":foo_proto"],
)

proto_library(
    name = "bar_proto",
    srcs = [
        "bar.proto",
    ],
    deps = [
        ":foo_proto"
    ],
    #strip_import_prefix = "//proto/proto_import_example"
)

java_proto_library(
    name = "bar_java_proto",
    deps = [":bar_proto"],
)


proto_library(
    name = "baz_service_proto",
    srcs = [
        "baz_service.proto",
    ],
    deps = [
        ":foo_proto",
        ":bar_proto"
    ],
    #strip_import_prefix = "//proto/proto_import_example"
)

java_grpc_library(
    name = "baz_java_proto",
    deps = [":baz_service_proto"],
)

