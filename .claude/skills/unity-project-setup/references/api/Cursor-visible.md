<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cursor-visible.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the hardware pointer is visible or not.

Set this to true to reveal the cursor. Set it to false to hide the cursor. Note that in CursorLockMode.Locked mode, the cursor is invisible regardless of the value of this property.

```csharp
using UnityEngine;
using System.Collections;public class CursorScript : MonoBehaviour
{
    // Use this for initialization
    void Start()
    {
        //Set Cursor to not be visible
        Cursor.visible = false;
    }
}
```
