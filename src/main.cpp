#include "main.h"

#include <cassert>
#include <cstdio>

#include "imgui.h"
#include "rlImGui.h"

const int kScreenWidth = 1920;
const int kScreenHeight = 1080;
const int kFPS = 60;

int main() {
  InitWindow(kScreenWidth, kScreenHeight, "Raylib + Imgui template");
  SetTargetFPS(kFPS);

  rlImGuiSetup(true); // sets up ImGui with ether a dark or light default theme
  float color[3]{0};
  bool flag;

  while (!WindowShouldClose()) {
    BeginDrawing();

    ClearBackground(WHITE);

    rlImGuiBegin(); // starts the ImGui content mode. Make all ImGui calls
                    // after this
    ImGui::Begin("Window");
    ImGui::Text("This is some useful text. asd asd asd"); // Display some text
                                                          // (you canuse a
                                                          // format strings too)
    ImGui::Checkbox("Demo Window", &flag);

    // Edit 3 floats representing a color
    ImGui::ColorEdit3("color", (float *)&color);
    ImGui::End();

    rlImGuiEnd(); // ends the ImGui content mode. Make all ImGui calls
                  // before this
    DrawText("Colored Hello, world", 100, 100, 20, GetColorFromFloats(color));
    EndDrawing();
  }

  rlImGuiShutdown();
  CloseWindow();
}

/// color is an float[3] array
/// each element has [0; 1] range
Color GetColorFromFloats(const float *p_color) {
  return Color{.r = (unsigned char)(p_color[0] * 255),
               .g = (unsigned char)(p_color[1] * 255),
               .b = (unsigned char)(p_color[2] * 255),
               .a = 255};
}
