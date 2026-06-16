<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.UnregisterCustomDependencyPrefixFilter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| prefixFilter | Prefix filter for the custom dependencies to unregister. |

### Returns

**uint** Number of custom dependencies removed.

### Description

Removes custom dependencies that match the prefixFilter.

```csharp
using UnityEngine;
using UnityEditor;
using UnityEngine.Assertions;
public class CustomDependenciesExample
{
    public static void AddAndRemoveCustomDependencies()
    {
        // Example to to illustrate how UnregisterCustomDependencyPrefixFilter works. Not a useful scenario.
        AssetDatabase.RegisterCustomDependency("MyDependencySystem/DepA", Hash128.Compute("Hello"));
        AssetDatabase.RegisterCustomDependency("MyDependencySystem/DepB", Hash128.Compute("World"));        var unregistered = AssetDatabase.UnregisterCustomDependencyPrefixFilter("MyDependencySystem/");
        Assert.AreEqual(2, unregistered);
    }
}
```
