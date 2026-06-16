<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.CanOpenAssetInEditor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entityId | The EntityId of the asset. |
| instanceID | The instance ID of the asset. |

### Returns

**bool** Returns true if Unity can successfully open the asset in the Editor, otherwise returns false.

### Description

Checks if Unity can open an asset in the Editor.

Checks if Unity can open a given asset instance in the Editor if AssetDatabase.OpenAsset is executed. Note: The asset must be written to disk, or this function always returns false.

```csharp
using UnityEditor;
using UnityEditor.Callbacks;
using UnityEngine;[CreateAssetMenu(fileName = "MyObject", menuName = "ScriptableObjects/MyObject", order = 1)]
public class MyObject : ScriptableObject
{
    public string myData;    [OnOpenAsset]
    public static bool Open(EntityId entityId)
    {
        if (AssetDatabase.GetMainAssetTypeAtPath(AssetDatabase.GetAssetPath(entityId)) == typeof(MyObject))
        {
            Debug.Log("Opening asset");
            return true;
        }
        else  return false; // This method doesn't handle opening of different asset types
    }    [OnOpenAsset(OnOpenAssetAttributeMode.Validate)]
    public static bool WillOpen(EntityId entityId)
    {
        if (AssetDatabase.GetMainAssetTypeAtPath(AssetDatabase.GetAssetPath(entityId)) == typeof(MyObject))
        {
            // We can open MyObject asset using MyObject opening method
            Debug.Log("This asset can be opened by OnOpenAsset marked method");
            return true;
        }
        else  return false; // The passed instance doesn't belong to MyObject type asset so we won't be able to open it using opening method inside MyObject
    }    [MenuItem("Test/WillOpenInUnity")]
    public static void WillSelectionBeOpenedInUnity()
    {
        AssetDatabase.CanOpenAssetInEditor(Selection.activeObject.GetEntityId());
    }
}
```
