<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-interacting-browsers-library.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Compile a static library as a Unity plug-in

You can compile libraries with Emscripten and use the libraries in Unity. It can be more beneficial to call functions from libraries that encapsulate C++ code rather than C++ code directly from the **plug-in** directory. The benefits include:

- Your code is easier to integrate with your Web Unity project.
- Your code can perform better than if you call functions from C++ code, especially for larger libraries.
- You can reuse the code in various projects.

## Steps to use a static library in Unity

To compile a static library that you can use as a Unity plug-in:

1. Download the Emscripten SDK
2. Configure any existing project scripts
3. Update your compiler options
4. Compile and import your static library files
5. Call your static library functions from C# scripts

### 1. Download the Emscripten SDK

You must download the Emscripten SDK that matches your version of Unity.

To find the appropriate version of Emscripten for your Unity version, refer to Web native plug-ins for Emscripten.

For download links and more information about how to install the Emscripten SDK, refer to Download and install (Emscripten).

### 2. Configure any existing project scripts

Emscripten works as a replacement for the gcc or clang compiler. If you have existing C/C++ code, you need to make the following changes in your C++ project:

- Use “emcc” as the C/C++ compiler
- Use “emar” as the static linker

For more information, refer to the Emscripten documentation on Compiling and Running Projects.

### 3. Update your compiler options

You might need to add some compiler options to your C/C++ project if your Unity project has the following **Player** settings (menu: **Edit** > **Project Settings** > **Player**).

| Property | Description |
| --- | --- |
| **Enable Exceptions** | If this property is set to **None**, add the compiler option “-fno-exceptions”. |
| **Enable Native C/C++ Multithreading** | If this property is enabled, include the compiler option “-pthread”. |
| **Enable WebAssembly 2023** | If this property is enabled, include the following compiler options:  “-fwasm-exceptions” “-sSUPPORT_LONGJMP=wasm” “-mbulk-memory” “-mnontrapping-fptoint” “-msimd128” “-msse4.2” |

### 4. Compile and import your static library files

Compile your static library files and then import your files into your Unity project in the `Assets/Plugins` folder.

**Note**: If you don’t have a **Plugins** folder, you need to create your own.

### 5. Call your static library functions from Unity C# scripts

You can call your static library functions from your Unity C# **scripts**. The way to call the functions is the same as if you call a C or C++ function from C# scripts. For an example, refer to Call C/C++/C# functions from Unity C# scripts.

## Additional resources

- Interaction with browser scripting
- Set up your JavaScript plug-in
- Call JavaScript functions from Unity C# scripts
- Call Unity C# script functions from JavaScript
- Create callbacks between Unity C#, JavaScript, and C/C++/C# code
