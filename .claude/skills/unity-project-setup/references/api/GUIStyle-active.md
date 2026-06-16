<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-active.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Rendering settings for when the control is pressed down.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Assigns a texture to button for when the control
    // is pressed down    Texture2D aTexture;    void OnGUI()
    {
        if (!aTexture)
        {
            Debug.LogError("Assign a texture on the editor first");
            return;
        }        GUI.skin.button.active.background = aTexture;
    }
}
```
