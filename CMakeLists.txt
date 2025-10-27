cmake_minimum_required(VERSION 3.27)

set(IMGUI_VERSION v1.92.4)
set(RAYLIB_VERSION 5.5)
set(RLIMGUI_VERSION 4d8a61842903978bc42adf3347cd34f4e6524efc)
set(PROJECT_CMAKE_NAME RaylibImGuiTemplate)
set(MAIN_PROJECT_NAME main)

if(!MSVC)
    set(CMAKE_C_COMPILER clang)
    set(CMAKE_CXX_COMPILER clang++)
endif()

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(${PROJECT_CMAKE_NAME} LANGUAGES CXX)

include(cmake/imgui.cmake)

include(cmake/raylib.cmake)
message("raylib successfully built as a static library")

include(cmake/rlimgui.cmake)
message("rlimgui successfully built as a static library")

add_executable(${MAIN_PROJECT_NAME}
  src/${MAIN_PROJECT_NAME}.cpp
)
target_include_directories(${MAIN_PROJECT_NAME} PRIVATE
  ${rlimgui_SOURCE_DIR}
  ${imgui_SOURCE_DIR}
  ${raylib_SOURCE_DIR}/src
)

target_link_libraries(${MAIN_PROJECT_NAME}
  rlimgui
)

if(MSVC)
  # MSVC Hot reload debugging (a.k.a Edit and Continue)
  target_compile_options(${MAIN_PROJECT_NAME} PUBLIC "/ZI")
  target_link_options(${MAIN_PROJECT_NAME} PUBLIC "/INCREMENTAL")

  # Make this project the startup project of the Visual Studio solution
  set_property(DIRECTORY PROPERTY VS_STARTUP_PROJECT ${MAIN_PROJECT_NAME})
endif()
