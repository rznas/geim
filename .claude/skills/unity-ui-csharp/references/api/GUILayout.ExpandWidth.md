<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUILayout.ExpandWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Option passed to a control to allow or disallow horizontal expansion.

If this is true, the enclosed UI elements can expand to fill the available horizontal width.

.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnGUI()
    {
        GUILayout.BeginVertical();
        GUILayout.Button("Short Button", GUILayout.ExpandWidth(false));
        GUILayout.Button("Very very long Button");
        GUILayout.EndVertical();
    }
}
```
