<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera-backgroundColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The color with which the screen will be cleared.

Only used if clearFlags are set to CameraClearFlags.SolidColor (or CameraClearFlags.Skybox but the skybox is not set up).

```csharp
// ping-pong animate background color
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public Color color1 = Color.red;
    public Color color2 = Color.blue;
    public float duration = 3.0F;    public Camera cam;    void Start()
    {
        cam = GetComponent<Camera>();
        cam.clearFlags = CameraClearFlags.SolidColor;
    }    void Update()
    {
        float t = Mathf.PingPong(Time.time, duration) / duration;
        cam.backgroundColor = Color.Lerp(color1, color2, t);
    }
}
```

Additional resources: camera component, Camera.clearFlags
