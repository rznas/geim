<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitGroups.GetGroups.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** String array of texture mipmap limit group names.

### Description

Retrieves a string array containing the name of all texture mipmap limit groups available in the project.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Writes the name of all texture mipmap limit groups available in the project to the Unity Console.
    void Start()
    {
        string[] textureMipmapLimitGroupNames = TextureMipmapLimitGroups.GetGroups();        if (textureMipmapLimitGroupNames.Length == 0)
        {
            Debug.Log("No texture mipmap limit groups have been created in this project.");
        }
        else
        {
            Debug.Log(string.Join(" -- ", textureMipmapLimitGroupNames));
        }
    }
}
```

Additional resources: RemoveGroup.
