<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Behaviour-enabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enabled Behaviours are Updated, disabled Behaviours are not.

This is shown as the small checkbox in the inspector of the behaviour.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.UI; // Required when Using UI elements.public class Example : MonoBehaviour
{
    public Image pauseMenu;    public void Start()
    {
        //Enables the pause menu UI.
        pauseMenu.enabled = true;
    }
}
```
