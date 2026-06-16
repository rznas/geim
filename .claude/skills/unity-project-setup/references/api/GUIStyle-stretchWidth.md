<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIStyle-stretchWidth.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Can GUI elements of this style be stretched horizontally for better layouting?

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        GUI.skin.button.stretchWidth = true;
    }
}
```
