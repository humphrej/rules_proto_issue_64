java_library(
    name = "junit_jupiter_api",
    exports = [
        "//external:jar/mvnorg/junit/jupiter/junit_jupiter_api"
    ],
    licenses = [
        "permissive"
    ],
    runtime_deps = [
        "//third_party/maven/org/apiguardian:apiguardian_api",
        "//third_party/maven/org/junit/platform:junit_platform_commons",
        "//third_party/maven/org/opentest4j:opentest4j"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_jupiter_engine",
    exports = [
        "//external:jar/mvnorg/junit/jupiter/junit_jupiter_engine"
    ],
    licenses = [
        "permissive"
    ],
    runtime_deps = [
        "//third_party/maven/org/apiguardian:apiguardian_api",
        "//third_party/maven/org/junit/platform:junit_platform_engine",
        ":junit_jupiter_api"
    ],
    visibility = [
        "//visibility:public"
    ]
)



java_library(
    name = "junit_jupiter_params",
    exports = [
        "//external:jar/mvnorg/junit/jupiter/junit_jupiter_params"
    ],
    licenses = [
        "permissive"
    ],
    runtime_deps = [
        "//third_party/maven/org/apiguardian:apiguardian_api",
        ":junit_jupiter_api"
    ],
    visibility = [
        "//visibility:public"
    ]
)


