<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Assemblies.CurrentAssemblies.GetLoadedAssemblies.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IReadOnlyList<Assembly>** A collection of assemblies.

### Description

Gets the assemblies Unity has loaded into the current execution context.

Use `CurrentAssemblies.GetLoadedAssemblies` to get a list of currently loaded assemblies that can be used for reflection purposes. This is a safer alternative to .NET's [AppDomain.CurrentDomain.GetAssmblies](https://learn.microsoft.com/en-us/dotnet/api/system.appdomain.getassemblies?view=net-9.0) in the Unity context. Unity uses the [AssemblyLoadContext](https://learn.microsoft.com/en-us/dotnet/api/system.runtime.loader.assemblyloadcontext?view=net-9.0) mechanism for code reload, which means assemblies can be loaded and unloaded at runtime. `AppDomain.CurrentDomain.GetAssemblies` returns a list of all loaded assemblies, which may include assemblies in the unloaded state and lead to exceptions and logical errors in the Editor code.

```csharp
using System.Text;
using UnityEditor;
using UnityEngine;
using UnityEngine.Assemblies;public class LoadedAssemblyInfo
{
    [MenuItem("Test/Get Loaded Assembly Info")]
    static void GetLoadedAssemblyInfo()
    {
        var sb = new StringBuilder();
        sb.AppendLine("Currently loaded assemblies are:");        foreach (var assembly in CurrentAssemblies.GetLoadedAssemblies())
        {
            sb.AppendLine(assembly.FullName);
        }        Debug.Log(sb.ToString());
    }
}
```
