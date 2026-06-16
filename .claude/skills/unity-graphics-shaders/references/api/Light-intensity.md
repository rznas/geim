<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-intensity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Intensity of a light is multiplied with the Light color.

The value can be between 0 and 8. This allows you to create over bright lights.

```csharp
using UnityEngine;public class example : MonoBehaviour
{
    Light myLight;    void Start()
    {
        myLight = GetComponent<Light>();
    }    void Update()
    {
        myLight.intensity = Mathf.PingPong(Time.time, 8);
    }
}
```
