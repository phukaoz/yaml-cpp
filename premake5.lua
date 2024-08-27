project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	
	targetdir("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")
	
	files
	{
		"src/**.h",
		"src/**.cpp",
		"include/**.h"
	}
	
	includedirs
	{
		"include"
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "on"
		
	filter "system:linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++20"
		staticruntime "on"
		
	filter "configuration:Debug"
		runtime "Debug"
		optimize "on"
		
	filter "configuration:Release"
		runtime "Release"
		optimize "on"