<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoImporter.SetDefaultReferences.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | An array of names of public fields in the imported MonoScript. The type of each field must be derived from UnityEngine.Object. |
| target | An array of objects to use as default values. The size of the array must match the size of the names array. The array can include null values. |

### Description

Sets default references for this MonoScript.

When the Unity Editor instantiates this MonoScript, it uses the default values to populate the named fields. Additional resources: MonoImporter.GetDefaultReference.

```csharp
using UnityEngine;
using UnityEditor;class Example
{
    [MenuItem("Examples/Set Default References")]
    public static void SetDefaultReferences()
    {
        var assetPath = "Assets/MyMonoBehaviour.cs";
        var monoImporter = AssetImporter.GetAtPath(assetPath) as MonoImporter;        var gameObject = AssetDatabase.LoadAssetAtPath<GameObject>(AssetDatabase.GUIDToAssetPath(AssetDatabase.FindAssets("Cube")[0]));
        var material = AssetDatabase.LoadAssetAtPath<Material>(AssetDatabase.GUIDToAssetPath(AssetDatabase.FindAssets("defaultMat")[0]));        var names = new string[] {"MyGameObject", "MyMaterial"};
        var values = new Object[] {gameObject, material};
        monoImporter.SetDefaultReferences(names, values);
        monoImporter.SaveAndReimport();
    }
}
```
