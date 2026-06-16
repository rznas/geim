<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitGroups.CreateGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| groupName | Name of the new texture mipmap limit group. |

### Description

(Editor Only) Attempts to create a texture mipmap limit group with the indicated `groupName`.

This operation fails and throws an exception if `groupName` is null/empty or a texture mipmap limit group with the same name already exists. If no other group with the same name exists, Unity creates the new group across all quality levels. By default, the new group mirrors the global texture mipmap limit.

If Unity creates the new group successfully, textures previously bound to `groupName` stop using QualitySettings.globalTextureMipmapLimit as a fallback and begin respecting the new group's TextureMipmapLimitSettings instead.

```csharp
#if UNITY_EDITOR
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    // Attempts to create a texture mipmap limit group with the name "MyGroup", as long as it doesn't exist already.
    [MenuItem("MyMenu/Create MipmapLimitGroup")]
    static void CreateMyGroup()
    {
        const string textureMipmapLimitGroup = "MyGroup";
        if (!TextureMipmapLimitGroups.HasGroup(textureMipmapLimitGroup))
        {
            TextureMipmapLimitGroups.CreateGroup(textureMipmapLimitGroup);
        }
        else
        {
            Debug.LogError($"Cannot create new texture mipmap limit group '{textureMipmapLimitGroup}', it already exists!");
        }
    }
}
#endif
```

Additional resources: HasGroup, RemoveGroup.
