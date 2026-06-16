<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitGroups.HasGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| groupName | Name of the texture mipmap limit group to verify. |

### Returns

**bool** Returns `true` if a texture mipmap limit group named `groupName` exists in the project. If that is not the case, returns `false`.

### Description

Checks whether a texture mipmap limit group with the indicated `groupName` exists in the project. This operation fails and throws an exception if `groupName` is null.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Checks if the texture mipmap limit group "MyGroup" exists in the project and prints a message to the Unity Console.
    void Start()
    {
        const string textureMipmapLimitGroupName = "MyGroup";
        bool myGroupExists = TextureMipmapLimitGroups.HasGroup(textureMipmapLimitGroupName);
        Debug.Log($"Texture mipmap limit group '{textureMipmapLimitGroupName}' {(myGroupExists ? "exists" : "does not exist")} in this project.");
    }
}
```

Additional resources: CreateGroup, RemoveGroup.
