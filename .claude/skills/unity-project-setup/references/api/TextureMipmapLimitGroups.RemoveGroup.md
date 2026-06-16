<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitGroups.RemoveGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| groupName | Name of the texture mipmap limit group to remove. |

### Description

(Editor Only) Attempts to remove a texture mipmap limit group with the indicated `groupName`.

This operation fails and throws an exception if `groupName` is null or there is no texture mipmap limit group named `groupName`. If Unity finds a matching group, Unity removes it from all quality levels.

Unity does not modify textures bound to the removed group. These textures continue to point to the removed group as long as you do not update and re-import them yourself. If you do not adjust the relevant textures, they automatically fall back to the global texture mipmap limit.

```csharp
#if UNITY_EDITOR
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    // Attempts to remove the texture mipmap limit group "MyGroup", if it exists in the project.
    [MenuItem("MyMenu/Remove TextureMipmapLimitGroup")]
    static void RemoveMyGroup()
    {
        const string textureMipmapLimitGroupName = "MyGroup";
        if (TextureMipmapLimitGroups.HasGroup(textureMipmapLimitGroupName))
        {
            TextureMipmapLimitGroups.RemoveGroup(textureMipmapLimitGroupName);
        }
        else
        {
            Debug.LogError($"Cannot remove texture mipmap limit group '{textureMipmapLimitGroupName}' as it does not exist!");
        }
    }
}
#endif
```

Additional resources: HasGroup, CreateGroup.
