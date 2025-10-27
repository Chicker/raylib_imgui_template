include(FetchContent)

FetchContent_Declare(
  raylib
  GIT_REPOSITORY https://github.com/raysan5/raylib
  GIT_TAG ${RAYLIB_VERSION}
  GIT_SHALLOW TRUE # only latest commit
)
FetchContent_MakeAvailable(raylib)

message("raylib successfully cloned")
message("  at ${raylib_SOURCE_DIR}")
