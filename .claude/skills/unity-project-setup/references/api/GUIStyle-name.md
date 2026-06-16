<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-name.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of this GUIStyle. Used for getting them based on name.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints the name of the style.    void OnGUI()
    {
        Debug.Log(GUI.skin.button.name);
    }
}
```
