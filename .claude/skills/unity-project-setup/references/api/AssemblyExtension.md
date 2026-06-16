<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssemblyExtension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extends the Assembly class with additional methods.

`AssemblyExtension` is a utility class that provides additional functionality for the Assembly class. Access the methods of this class via the `Assembly` class rather than via `AssemblyExtension` directly. For example, to use AssemblyExtension.GetLoadedAssemblyPath, call: `Assembly.GetLoadedAssemblyPath`. Additional resources: Assembly

```csharp
using UnityEditor;
using UnityEngine;
public static class AssemblyInfoExtractor
{
    [MenuItem("Test/Log Assembly Path")]
    static void LogAssemblyPath()
    {
        Debug.Log(typeof(AssemblyInfoExtractor).Assembly.GetLoadedAssemblyPath());
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| GetLoadedAssemblyPath | Returns location of the assembly. |
