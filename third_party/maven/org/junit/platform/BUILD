java_library(
    name = "junit_platform_commons",
    exports = [
        "//external:jar/mvnorg/junit/platform/junit_platform_commons"
    ],
    licenses = [
        "permissive"
    ],
    visibility = [
        "//third_party/maven:__subpackages__"
    ]
)



java_library(
    name = "junit_platform_engine",
    exports = [
        "//external:jar/mvnorg/junit/platform/junit_platform_engine"
    ],
    licenses = [
        "permissive"
    ],
    runtime_deps = [
        "//third_party/maven/org/opentest4j:opentest4j",
        ":junit_platform_commons"
    ],
    visibility = [
        "//third_party/maven:__subpackages__"
    ]
)


