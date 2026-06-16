<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssemblyExtension.GetLoadedAssemblyPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| assembly | The assembly to look up the location of. Throws ArgumentNullException if null. |

### Returns

**string** The path to the assembly. Null if path is not known.

### Description

Returns location of the assembly.

```csharp
using UnityEditor;
using UnityEngine;public static class AssemblyInfoExtractor
{
    [MenuItem("Test/Log Assembly Path")]
    static void LogAssemblyPath()
    {
        Debug.Log(typeof(AssemblyInfoExtractor).Assembly.GetLoadedAssemblyPath());
    }
}
```
