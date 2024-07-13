# vk_cube_ansi_C89
#### Vulkan cube Demo, but attempt to switch to the C89.  


## I don't understand.  
### this works with visual studio.  
  
## Used Compilers  
(MinGW.org GCC-6.3.0-1) 6.3.0   
Open Watcom 1.9  

## Error Message  
 With Open Watcom   
``` 
 Selected GPU 0: NVIDIA GeForce GTX 1060 3GB, type: 2
 Assertion Failed: !err, function demo_create_surface, file src/cube.c, line 4687.
 ABNORMAL TERMINATION
```
With GCC

``` 
Selected GPU 0: NVIDIA GeForce GTX 1060 3GB, type: 2
Assertion failed: !err, file src/cube.c, line 4687
```


same error, I even tested it on clang and it gave the same thing.  

but in visual studio replacing all the files from the standard c demo the code works.  
