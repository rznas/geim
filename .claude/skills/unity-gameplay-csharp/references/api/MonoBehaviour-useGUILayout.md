<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour-useGUILayout.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Disabling this lets you skip the GUI layout phase.

It can only be used if you do not use GUI.Window and GUILayout inside of this OnGUI call.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public void Start()
    {
        //Disabling this lets you skip the GUI layout phase.
        useGUILayout = false;
    }
}
```
