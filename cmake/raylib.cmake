include(FetchContent)

FetchContent_Declare(
  raylib
  URL https://github.com/raysan5/raylib/archive/refs/tags/${RAYLIB_VERSION}.tar.gz
)
FetchContent_MakeAvailable(raylib)

message("raylib sources successfully downloaded")
message("  at ${raylib_SOURCE_DIR}")

