<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/performance-optimizing-code-managed-memory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Optimizing your code for managed memory

C#’s automatic memory management reduces the risk of memory leaks and other programming errors, in comparison to other programming languages like C++, where you must manually track and free all the memory you allocate.

Automatic memory management allows you to write code quickly and with few errors. However, this convenience might have performance implications. To optimize your code for performance, you must avoid situations where your application triggers the garbage collector a lot. This section outlines some common issues and workflows that affect when your application triggers the garbage collector.

| **Topic** | **Description** |
| --- | --- |
| **Reference type management** | Optimize how you use reference types in your code. |
| **Pooling and reusing objects** | Reduce CPU load and garbage collector overhead by using Unity’s `UnityEngine.Pool` APIs, which allow you to pool and reuse frequently-used objects rather than repeatedly creating and destroying them. |
| **Optimizing arrays** | Optimize when and how you use arrays in your code. |

## Additional resources

- Managed memory introduction
- Garbage collector introduction
