project "ImGui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir "Build/%{cfg.buildcfg}"
	objdir "Build/%{cfg.buildcfg}/obj"

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
        "backends/imgui_impl_opengl3.cpp",
        "backends/imgui_impl_opengl3.h",
	}

    includedirs
    {
        "./"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter { "configurations:Debug" }
		defines {"__DEBUG"}
		symbols "On"

	filter { "configurations:Release" }
		defines {"__Release"}
		optimize "On"
