<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.FindWithTag.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tag | The tag to search for. |

### Description

Retrieves the first active GameObject tagged with the specified tag. Returns null if no GameObject has the tag.

Tags must be declared in the tag manager before using them. A `UnityException` is thrown if the tag does not exist or if an empty string or `null` is supplied as the `tag` parameter.

**Note:** This method returns the first GameObject it finds with the specified tag. If a scene contains multiple active GameObjects with the specified tag, there is no guarantee this method will return a specific GameObject.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject respawnPrefab;
    public GameObject respawn;
    void Start()
    {
        if (respawn == null)
            respawn = GameObject.FindWithTag("Respawn");        Instantiate(respawnPrefab, respawn.transform.position, respawn.transform.rotation);
    }
}
```
