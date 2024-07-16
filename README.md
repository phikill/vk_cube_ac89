# vk_cube_ansi_C89
#### Vulkan cube Demo, but I downgraded to the ANSI C 89 standard.

## Works Fine !...
  

to compile you can use an x32/386 compiler or higher.  

To start the program, you need a GPU compatible with Vulkan drivers.  

## Used Compilers  
(MinGW.org GCC-6.3.0-1) 6.3.0   
Open Watcom 1.9  


#### !! I did it during my free lunch time. Maybe there are errors that I didn't see in the code, maybe it can't work on your computer


## Why made for the c89?

because it's easier for me to understand this pattern, and also because of watcom  

## [ALERT !] : I only tested on Windows.



# !! [ERRORS]
 Hardware : GTX 1060 = 0  

Geforce GTX 1060 :
VK_SDK 1.2.182.0

 Hardware : Intel(R) HD Graphics 530 = 1  

  
Intel(R) HD Graphics 530 :  
VK_SDK: 1.3.283.0  
``` 
ERROR : VALIDATION - Message Id Number: -366203624 | Message Id Name: VUID-VkInstanceCreateInfo-pNext-04926
        Validation Error: [ VUID-VkInstanceCreateInfo-pNext-04926 ] | MessageID = 0xea2c2d18 | vkCreateInstance(): pCreateInfo->ppEnabledExtensionNames does not include VK_EXT_debug_utils, but the pNext chain includes VkDebugUtilsMessengerCreateInfoEXT. The Vulkan spec states: If the pNext chain of VkInstanceCreateInfo includes a VkDebugUtilsMessengerCreateInfoEXT structure, the list of enabled extensions in ppEnabledExtensionNames must contain VK_EXT_debug_utils (https://vulkan.lunarg.com/doc/view/1.3.283.0/windows/1.3-extensions/vkspec.html#VUID-VkInstanceCreateInfo-pNext-04926)
``` 
