<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TypeCache.GetFieldsWithAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| attrType | Attribute type. |
| assemblyName | Optional assembly name. |

### Returns

**FieldInfoCollection** Returns an unordered FieldInfo collection of fields marked with the **T** attribute. If assemblyName is specified, returns only fields defined in this assembly.

### Description

Retrieves an unordered collection of fields marked with the **T** attribute.

This method provides fast access to all class fields loaded from a given assembly or all Unity domain assemblies and marked with a specific attribute. Fields marked with ancestors of the specified attribute are also included in the result. The order of results is undefined.

```csharp
using UnityEditor;
using System;
using System.Collections.Generic;public class Example
{
    class MyAttribute : Attribute {}    [MyAttribute]
    static int s_MyField;    static void ScanStaticFieldsMarkedWithMyAttribute()
    {
        var extractedFields = TypeCache.GetFieldsWithAttribute<MyAttribute>();
        foreach (var fi in extractedFields)
        {
            if (!fi.IsStatic)
                continue;
            //...
        }
    }
}
```

**Note:** The returned FieldInfoCollection is read-only and thread-safe. The order of FieldInfo in the collection is undefined.
