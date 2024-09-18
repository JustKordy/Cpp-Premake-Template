
workspace "Workspace"
    configurations { "Debug", "Release"}
    platforms { "Win64"}

    filter "platforms:Win64"
        defines {"WIN64"}
        system "Windows"
        architecture "x86_64"

    filter "configurations:Release"
        defines {"RELEASE"}

    filter "configurations:Debug"
        defines { "DEBUG", "WAIT=std::cin.get()" }



project "App"
    kind "ConsoleApp"
    language "C++"
    location "App"
    files {"App/src/**.cpp", "App/src/**.h", "App/src/**.hpp" }
    targetdir "Build/%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}/%{prj.name}"
    objdir "Build/objdir/%{cfg.system}-%{cfg.architecture}/%{cfg.buildcfg}/%{prj.name}"
