
solution "demboyz"
    basedir ".."
    location (_ACTION)
    targetdir "../bin"
    startproject "demboyz"
    configurations { "Debug", "Release" }
    platforms "x32"
    flags { "MultiProcessorCompile", "Symbols" }

    defines "_CRT_SECURE_NO_WARNINGS"
    configuration "Debug"
        defines { "DEBUG" }
    configuration "Release"
        defines { "NDEBUG" }
        optimize "Full"
    configuration {}

    -- GCC specific build options.
    configuration "gmake"
        -- Enables C++11 support.
        buildoptions { "-std=c++0x" }
    configuration {}

    project "demboyz"
        kind "ConsoleApp"
        language "C++"
        files
        {
            "../demboyz/**.h",
            "../demboyz/**.cpp",
            "../external/**.h",
            "../external/**.cpp",
            "../external/**.cc"
        }
        includedirs
        {
            "../external/json_checker/include",
            "../external/cbase64-1.1/include",
            "../external/sourcesdk/include",
            "../external/rapidjson-1.0.2/include",
            "../external/snappy-1.1.3/include",
            "../demboyz"
        }

