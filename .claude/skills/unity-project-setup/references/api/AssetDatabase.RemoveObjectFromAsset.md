<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.RemoveObjectFromAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| objectToRemove | Object to remove. |

### Description

Removes object from its asset (Additional resources: AssetDatabase.AddObjectToAsset).

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;public class Scriptable : ScriptableObject
{
}
public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Remove Object From Asset Example")]
    public static void RemoveObjectFromAssetExample()
    {
        var scriptableObjectList = new List<Scriptable>();        //Create Scriptable Objects and store them in a List
        for (var i = 0; i < 10; i++)
        {
            scriptableObjectList.Add(ScriptableObject.CreateInstance<Scriptable>());
            AssetDatabase.CreateAsset(scriptableObjectList[i], $"Assets/ScriptableObjects/SO{i}.asset");
        }        //Add Materials as Sub Assets to the Scriptable Objects
        foreach (var so in scriptableObjectList)
        {
            AssetDatabase.AddObjectToAsset(new Material(Shader.Find("Standard")), so);
        }
        AssetDatabase.SaveAssets();        //Remove Materials from their Scriptable Objects
        foreach (var so in scriptableObjectList)
        {
            var material =
                AssetDatabase.LoadAssetAtPath(AssetDatabase.GetAssetPath(so), typeof(Material));
            AssetDatabase.RemoveObjectFromAsset(material);
        }
        AssetDatabase.SaveAssets();
    }
}
```
