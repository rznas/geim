<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TypeCache.GetTypesDerivedFrom.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| parentType | Type of a class or interface. |
| assemblyName | Optional assembly name. |

### Returns

**TypeCollection** Returns an unordered collection of derived types. If assemblyName is specified, returns only types defined in this assembly.

### Description

Retrieves an unordered collection of types derived from the **T** type.

This method provides fast access to all classes loaded from a given assembly or all Unity domain assemblies, which are derived from a specific class or implement a specific interface. Base class or interface can be a generic. The order of results is undefined.

```csharp
using UnityEditor;public class Example
{
    static void ScanAssetPostprocessors()
    {
        var extractedTypes = TypeCache.GetTypesDerivedFrom<AssetPostprocessor>();
        foreach (var editors in extractedTypes)
        {
            //...
        }
    }
}
```

Or classes which implement a specific interface.

```csharp
using UnityEditor;public interface IExampleInterface {}public class Example
{
    static void ScanInterfaceImplementers()
    {
        var extractedTypes = TypeCache.GetTypesDerivedFrom<IExampleInterface>();
        foreach (var editors in extractedTypes)
        {
            //...
        }
    }
}
```

**Note:** The returned TypeCollection is read-only and thread-safe. The order of types in the collection is undefined.
