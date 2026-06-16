<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIContent-image.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The icon image contained.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    public Texture icon;    void OnGUI()
    {
        if (!icon)
        {
            Debug.LogError("Add a texture on the inspector first");
            return;
        }
        GUI.Button(new Rect(0, 0, 100, 20), new GUIContent(icon));
    }
}
```
