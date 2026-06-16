<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin-font.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The default font to use for all styles.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Modifies the font only of the current GUISkin.    public Font font;    void OnGUI()
    {
        if (!font)
        {
            Debug.LogError("No font found, assign one in the inspector.");
            return;
        }
        GUI.skin.font = font;        GUILayout.Label("This is a label with the font");
        GUILayout.Button("And this is a button");
    }
}
```
