<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-allCameras.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns all enabled cameras in the Scene.

All cameras in the scene can be enabled or disabled. The allCameras value tells how many cameras are still enabled. If all the cameras are disabled then a value of zero will be returned.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    private int count;    void Start()
    {
        count = Camera.allCameras.Length;
        print("We've got " + count + " cameras");
    }
}
```
