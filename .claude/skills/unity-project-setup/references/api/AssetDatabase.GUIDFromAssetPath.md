<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.GUIDFromAssetPath.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Project relative path for the asset. |

### Returns

**GUID** The GUID of the asset. An all-zero GUID denotes an invalid asset path.

### Description

Get the GUID for the asset at `path`.

All paths are relative to the project folder, for example: "Assets/MyTextures/hello.png".

```csharp
using UnityEngine;
using UnityEditor;public static class Example
{
    [MenuItem("AssetDatabase/GUIDFromAssetPath")]
    static void Doit()
    {
        GUID t = AssetDatabase.GUIDFromAssetPath("Assets/texture.jpg");
        Debug.Log(t.ToString());
    }
}
```
