include(FetchContent)

FetchContent_Declare(
  imgui
  URL https://github.com/ocornut/imgui/archive/refs/tags/${IMGUI_VERSION}.tar.gz
)
FetchContent_MakeAvailable(imgui)

message("Imgui sources successfully downloaded")
message("  at ${imgui_SOURCE_DIR}")
