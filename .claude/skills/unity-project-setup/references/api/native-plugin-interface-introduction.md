<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/native-plugin-interface-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to native plug-in API

In addition to the public C# APIs for writing managed code, Unity provides a smaller native interface, which you can use to access Unity Editor and Engine functionality from your native **plug-ins**.

## Plugin API folder

The native interfaces are a set of C or C++ compatible header (.h) files included as part of the Unity Editor installation. The files are located in the `PluginAPI` folder, which varies depending on the operating systems you’re using:

- **Windows**: `<UnityInstallPath>\Editor\Data\PluginAPI`.
- **macOS**: Right-click the Unity application, and select **Show Package Contents**. The headers are located in the `Contents/Resources/PluginAPI` folder.
- **Linux**: `<UnityInstallPath>/Editor/Data/PluginAPI`.

Each header file contains additional documentation as code comments within it. For more information on getting started with implementing the native interfaces, refer to the code comments in the main header file `IUnityInterface.h`.

## Interface compatibility

All Unity **native plug-in** API header files are compatible with plug-ins written in C++, but only some are compatible with plug-ins written in C.

Files that aren’t C-compatible report the error `"This file cannot be compiled in a C environment"` if you attempt to compile them as C. You’ll also find the corresponding check in the header file source:

```
#ifndef __cplusplus
#error "This file cannot be compiled in a C environment"
#endif
```

## Interface registry

To handle main Unity events, a plug-in must export `UnityPluginLoad` and `UnityPluginUnload` functions. `IUnityInterfaces` enables the plug-in to access these functions, which you can find in `IUnityInterface.h` in the plug-in API.

The following example uses `IUnityInterfaces` to load the `IUnityGraphics` interface into a pointer. This is a standard method you can repeat to load other interfaces from the native plug-in API:

```
#include "IUnityInterface.h"
#include "IUnityGraphics.h"
// Unity plugin load event
extern "C" void UNITY_INTERFACE_EXPORT UNITY_INTERFACE_API
    UnityPluginLoad(IUnityInterfaces* unityInterfaces)
{
    IUnityGraphics* graphics = unityInterfaces->Get<IUnityGraphics>();
}
```

## Additional resources

- Native plug-in API for graphics and rendering
- Native plug-in API for shader compiler
- Native plug-in API for memory manager
- Native plug-in API for profiling
- Native plug-in API for logging
