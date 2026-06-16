<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetDatabase.TryGetGUIDAndLocalFileIdentifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| entityId | EntityId of the object to retrieve information for. |
| instanceID | InstanceID of the object to retrieve information for. |
| obj | The object to retrieve GUID and File Id for. |
| assetRef | The asset reference to retrieve GUID and File Id for. |
| guid | The GUID of an asset. |
| localId | The local file identifier of this asset. |

### Returns

**bool** True if the guid and file id were successfully found, false if not.

### Description

Get the GUID and local file id from an object instance id.

**Warning:** Avoid the obsolete versions of this function, which use `int` for the `localId` parameter instead of `long`. Local Ids can be longer than 32 bits in some cases, such as for Prefabs. When Unity serializes an asset reference it points to two things: the GUID and file ID. GUID is a unique hash, and file ID is a value relative to the asset. Both of these values are used when a serialized asset references another asset.

If working with a text serialized project (see Editor Settings) it is possible to manually modify this information. A common use is moving C# script files from a project to a DLL while keeping any GameObjects using these scripts intact. As an example, suppose your project contains a C# MonoBehaviour, a Scene, and a GameObject with this script attached. When serialized the Unity Scene file will contain something that looks like this (reduced to the relevant parts):

```csharp
/* example .unity Scene contents:--- !u!1 &65078845
GameObject:
  m_Component:
  -component: {fileID : 65078850}
--- !u!114 &65078850
MonoBehaviour:
  m_Script: {fileID : 11500000, guid : 9cbd8cdf99d44b58972fbc7f6f38088f, type : 3}*/
```

```csharp
using System.Text;
using UnityEngine;
using UnityEditor;class ShowAssetIds
{
    [MenuItem("Assets/Show Asset Ids")]
    static void MenuShowIds()
    {
        var stringBuilder = new StringBuilder();        foreach (var obj in AssetDatabase.LoadAllAssetsAtPath(AssetDatabase.GetAssetPath(Selection.activeObject)))
        {
            string guid;
            long file;            if (AssetDatabase.TryGetGUIDAndLocalFileIdentifier(obj, out guid, out file))
            {
                stringBuilder.AppendFormat("Asset: " + obj.name +
                    "\n  EntityId: " + obj.GetEntityId() +
                    "\n  GUID: " + guid +
                    "\n  File ID: " + file);
            }
        }        Debug.Log(stringBuilder.ToString());
    }
}
```

Additional resources: GlobalObjectId.
