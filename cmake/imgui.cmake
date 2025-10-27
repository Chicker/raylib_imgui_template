include(FetchContent)

FetchContent_Declare(
  imgui
  GIT_REPOSITORY https://github.com/ocornut/imgui
  GIT_TAG v1.92.4
  GIT_SHALLOW TRUE # only latest commit
)
FetchContent_MakeAvailable(imgui)

message("Imgui successfully cloned")
message("  at ${imgui_SOURCE_DIR}")
