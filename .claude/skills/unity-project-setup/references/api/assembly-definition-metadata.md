<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/assembly-definition-metadata.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Assembly metadata and compilation details

You can define additional metadata for your assemblies and retrieve information on the assemblies included in a project build.

## Setting assembly attributes

You can use assembly attributes to set metadata properties for your assemblies. Although not a requirement, it’s good practice to define these attributes in a separate file named `AssemblyInfo.cs` alongside your Assembly Defintion.

For example, the following assembly attributes specify several .NET assembly metadata values and the Unity-defined `Preserve` attribute, which affects how unused code is removed from an assembly when you build your project:

```
[assembly: System.Reflection.AssemblyCompany("Bee Corp.")]
[assembly: System.Reflection.AssemblyTitle("Bee's Assembly")]
[assembly: System.Reflection.AssemblyCopyright("Copyright 2020.")]
[assembly: UnityEngine.Scripting.Preserve]
```

## Getting assembly information in build scripts

Use the `CompilationPipeline` class to retrieve information about all assemblies built by Unity for a project, including those created based on Assembly Definition assets.

For example, the following script uses the `CompilationPipeline` class to list all the current Player assemblies in a project:

```csharp
using UnityEditor;
using UnityEditor.Compilation;
public static class AssemblyLister
{
    [MenuItem("Tools/List Player Assemblies in Console")]
    public static void PrintAssemblyNames()
    {
        UnityEngine.Debug.Log("== Player Assemblies ==");
        Assembly[] playerAssemblies =
            CompilationPipeline.GetAssemblies(AssembliesType.Player);

        foreach (var assembly in playerAssemblies)
        {
            UnityEngine.Debug.Log(assembly.name);
        }
    }
}
```

## Additional resources

- Creating assembly definitions
- Referencing assemblies
- Assembly Definition properties
- Assembly Definition Reference properties
- Assembly Definition File Format
