<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IFilterBuildAssemblies.OnFilterAssemblies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildOptions | The current build options. |
| assemblies | The list of assemblies that will be included. |

### Returns

**string[]** Returns the filtered list of assemblies that are included in the build.

### Description

Will be called after building script assemblies, but makes it possible to filter away unwanted scripts to be included.

Each implementation will be called in the order sorted by callbackOrder. The result of each invocation is piped through on the next call to OnFilterAssemblies. You are not allowed to add new assemblies.

Additional resources: BuildPlayerProcessor, IPostBuildPlayerScriptDLLs, IUnityLinkerProcessor

```csharp
using UnityEditor;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;
using System.Linq;class MyCustomFilter : IFilterBuildAssemblies
{
    public int callbackOrder { get { return 0; } }
    public string[] OnFilterAssemblies(BuildOptions buildOptions, string[] assemblies)
    {
        return assemblies.Where(x => x == "some.dll").ToArray();
    }
}
```
