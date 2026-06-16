<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.Contains.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The asset object to check. |
| entityId | The EntityID of an asset to check. |
| instanceID | The InstanceID of an asset to check. |

### Returns

**bool** Returns true if the object, EntityID, or InstanceID corresponds to a file in the Assets folder. Otherwise, returns false.

### Description

Checks whether a given object is an asset.

```csharp
using UnityEditor;
using UnityEngine;public class AssetDatabaseExamples : MonoBehaviour
{
    [MenuItem("AssetDatabase/Contains Example")]
    static void ContainsExample()
    {
        //Material is created in memory and the Asset Database does not know about it
        var material = new Material(Shader.Find("Specular"));
        Debug.Log(AssetDatabase.Contains(material)); //Output will be false
        //Material is then saved to disk as an asset and therefore Asset Database knows that it exists
        AssetDatabase.CreateAsset(material, "Assets/Materials/MyMaterial.mat");
        Debug.Log(AssetDatabase.Contains(material)); //Output will be true
    }
}
```
