<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application.IsPlaying.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The object to test. |

### Returns

**bool** True if the object is part of the playing world.

### Description

Returns true if the given object is part of the playing world either in any kind of built Player or in Play Mode.

In a built Player, this method will always return true.

In the Editor, it will return true if the Editor is in Play Mode and the provided object is part of the playing world and not, for example, part of an object that is in Prefab Mode.

Additional resources: ExecuteAlways.

```csharp
using UnityEngine;[ExecuteAlways]
public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        if (Application.IsPlaying(gameObject))
        {
            // Play logic
        }
        else
        {
            // Editor logic
        }
    }
}
```
