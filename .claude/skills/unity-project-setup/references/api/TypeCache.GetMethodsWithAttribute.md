<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TypeCache.GetMethodsWithAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attrType | Attribute type. |
| assemblyName | Optional assembly name. |

### Returns

**MethodCollection** Returns an unordered MethodInfo collection of methods marked with the **T** attribute. If assemblyName is specified, returns only methods defined in this assembly.

### Description

Retrieves an unordered collection of methods marked with the **T** attribute.

This method provides fast access to all methods loaded from a given assembly or all Unity domain assemblies and marked with a specific attribute. Methods marked with ancestors of the specified attribute are also included in the result. The order of results is undefined.

```csharp
using UnityEditor;
using System.Collections.Generic;public class Example
{
    static void ScanInitializeOnLoadMethods()
    {
        var extractedMethods = TypeCache.GetMethodsWithAttribute<InitializeOnLoadMethodAttribute>();
        foreach (var m in extractedMethods)
        {
            if (m.IsPrivate)
                continue;
            //...
        }        for (int i = 0; i < extractedMethods.Count; ++i)
        {
            if (extractedMethods[i].IsPublic)
                continue;
            //...
        }
    }
}
```

**Note:** The returned MethodCollection is read-only and thread-safe. The order of MethodInfo in the collection is undefined.
