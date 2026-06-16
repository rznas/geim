<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUISkin.FindStyle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Try to search for a GUIStyle. This functions returns NULL and does not give an error.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Checks if a style name exists    string aStyleName = "A Style I have";    void OnGUI()
    {
        if (GUI.skin.FindStyle(aStyleName) == null)
        {
            Debug.LogWarning("No style named \"" + aStyleName + "\" could be found");
        }
    }
}
```
