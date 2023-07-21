project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    includedirs {
        "C:/VulkanSDK/1.3.250.0/Include"
    }

    files 
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.cpp",
        "backends/imgui_impl_Win32.h",
        "backends/imgui_impl_Win32.cpp",
        "backends/imgui_impl_Vulkan.h",
        "backends/imgui_impl_Vulkan.cpp",
        "backends/imgui_impl_OpenGL3.h",
        "backends/imgui_impl_OpenGL3.cpp"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "On"

    filter {"system:windows", "configurations:Release"}
        buildoptions "/MD"