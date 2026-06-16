<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cubemap-format.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The format of the pixel data in the texture (Read Only).

Use this to determine the format of the texture.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Print the format of a given cubemap.
    public Cubemap cubeMap;    void Start()
    {
        if (cubeMap != null)
        {
            Debug.Log(cubeMap.format);
        }
        else
        {
            Debug.Log("No cubemap was assigned, please assing one on the inspector.");
        }
    }
}
```
