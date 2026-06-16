<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderSettings-ambientLight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Flat ambient lighting color.

Flat ambient lighting mode uses color. It has the same value as ambientSkyColor.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void  Start()
    {
        // Make the ambient lighting red
        RenderSettings.ambientLight = Color.red;
    }
}
```

Additional resources: ambientMode, The Lighting window.
