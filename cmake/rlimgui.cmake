include(FetchContent)

FetchContent_Declare(
  rlimgui
  GIT_REPOSITORY https://github.com/raylib-extras/rlImGui
  GIT_TAG ${RLIMGUI_VERSION}
  GIT_SHALLOW TRUE # only latest commit
)
FetchContent_MakeAvailable(rlimgui)

message("rlimgui successfully cloned")
message("  at ${rlimgui_SOURCE_DIR}")

add_library(rlimgui STATIC
  ${rlimgui_SOURCE_DIR}/rlImGui.cpp
  ${imgui_SOURCE_DIR}/imgui.cpp
  ${imgui_SOURCE_DIR}/imgui_demo.cpp
  ${imgui_SOURCE_DIR}/imgui_draw.cpp
  ${imgui_SOURCE_DIR}/imgui_tables.cpp
  ${imgui_SOURCE_DIR}/imgui_widgets.cpp
)

target_include_directories(rlimgui PRIVATE ${imgui_SOURCE_DIR})

# raylib should be build as a staic lib in advance
target_link_libraries(rlimgui PRIVATE raylib)

