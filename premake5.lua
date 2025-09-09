project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "off"

    targetdir ("%{prj.location}/bin/" .. outputdir)
    objdir ("%{prj.location}/bin-int/" .. outputdir)

    files 
    {
        "imguiconfig.h",
        "imgui.cpp",
        "imgui.h",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_tables.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_stacklayout.cpp",
        "imgui_stacklayout.h",
        "imgui_stacklayout_internal.h"
    }

    filter "system:windows"
        architecture "x86_64"
        systemversion "latest"

    filter "system:macosx"
		architecture "ARM64"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
    filter "configurations:Release"
        runtime "Release"
        optimize "on"