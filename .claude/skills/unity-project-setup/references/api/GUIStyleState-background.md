<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyleState-background.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The background image used by GUI elements in this given state.

See also: scaledBackgrounds.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Assigns a texture to customStyles[0] for when the control
    // is pressed down    Texture2D aTexture;    void OnGUI()
    {
        if (!aTexture)
        {
            Debug.LogError("Assign a texture on the editor first");
            return;
        }
        if (GUI.skin.customStyles.Length > 0)
        {
            GUI.skin.customStyles[0].active.background = aTexture;
        }
    }
}
```
