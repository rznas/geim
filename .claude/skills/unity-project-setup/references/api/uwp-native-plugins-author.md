<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/uwp-native-plugins-author.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Author native UWP plug-ins

To author native Universal Windows Platform (UWP) **plug-ins**, you need to know how to create native plug-ins for Unity. For more information about native plug-ins and their uses, refer to Native plug-ins.

To author native UWP plug-ins, you can use either a precompiled dynamic-link library (DLL) or the C++ source code.

## Precompiled native plug-ins

To P/Invoke into precompiled native plug-ins, you need to:

1. Load the DLL at runtime.
2. Find the function entry point.
3. Call the plug-in.

You need to compile the DLLs against the appropriate Windows SDK for the target CPU architecture. You also need to configure the DLLs in the Plug-in **Inspector** when you add them to a Unity project.

## C++ source code native plug-ins

You can add C++ (.cpp) code files directly into a Unity project, which will act as a plug-in in the Plug-in Inspector. If you configure the plug-ins to be compatible with UWP and the **IL2CPP** **scripting backend**, Unity compiles these C++ files together with the C++ code that it generates from managed assemblies.

## Additional resources

- Native plug-ins
- Import and configure plug-ins
- Call and implement native UWP plug-ins
