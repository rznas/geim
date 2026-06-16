<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/performance-native-memory-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Native memory introduction

The Unity engine’s internal C/C++ core has its own memory management system, called native memory. In most situations, you can’t directly access or modify this memory type.

Native memory isn’t automatically managed or subject to garbage collection. This means it’s difficult to profile and handle in a way that doesn’t cause memory leaks.

Unity uses different memory allocator types, which all use different algorithms to organize memory. Unity’s memory manager uses these allocator types in different areas to organize the memory in your application effectively.

To get greater control over how Unity allocates native memory, you can adjust the size of each allocation for each area. You can adjust the size of allocations either through the Player settings window in the Unity Editor, or through the command line. For more information, refer to Customizing allocators.

## Additional resources

- Memory in Unity introduction
- Native allocators introduction
- Customizing allocators
