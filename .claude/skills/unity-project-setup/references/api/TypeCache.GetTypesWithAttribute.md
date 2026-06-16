<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TypeCache.GetTypesWithAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attrType | Attribute type. |
| assemblyName | Optional assembly name. |

### Returns

**TypeCollection** Returns an unordered collection of types. If assemblyName is specified, returns only types defined in this assembly.

### Description

Retrieves an unordered collection of types marked with the **T** attribute.

This method provides fast access to all classes loaded from a given assembly or all Unity domain assemblies and marked with a specific attribute. Types marked with ancestors of the specified attribute are also included in the result. The order of results is undefined.

```csharp
using UnityEditor;public class Example
{
    static void ScanTypesWithAttribute()
    {
        var extractedTypes = TypeCache.GetTypesWithAttribute<CustomEditor>();
        foreach (var m in extractedTypes)
        {
            //...
        }
    }
}
```

**Note:** The returned TypeCollection is read-only and thread-safe. The order of types in the collection is undefined.
