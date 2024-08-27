project "yaml-cpp"
	kind "StaticLib"
	language "C++"
	cppdialect "C++20"
	staticruntime "on"
	
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
		staticruntime "off"
		
	filter "system:linux"
		pic "on"
		systemversion "latest"
		staticruntime "off"
		
	filter "configurations:Debug"
		runtime "Debug"
		optimize "on"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "on"