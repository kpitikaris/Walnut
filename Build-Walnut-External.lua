-- WalnutExternal.lua

VULKAN_SDK = os.getenv("VULKAN_SDK")

IncludeDir = {}
IncludeDir["VulkanSDK"] = "%{VULKAN_SDK}/Include"
IncludeDir["glm"] = "../Walnut/Vendor/glm"
IncludeDir["spdlog"] = "../Walnut/Vendor/spdlog/include"

LibraryDir = {}
LibraryDir["VulkanSDK"] = "%{VULKAN_SDK}/Lib"

Library = {}
Library["Vulkan"] = "%{LibraryDir.VulkanSDK}/vulkan-1.lib"

group "Dependencies"
   include "Walnut/Vendor/imgui"
   include "Walnut/Vendor/glfw"
   include "Walnut/Vendor/yaml-cpp"
group ""

group "Core"
    include "Walnut/Build-Walnut.lua"
group ""