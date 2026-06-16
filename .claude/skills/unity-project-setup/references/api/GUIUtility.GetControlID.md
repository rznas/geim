<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUIUtility.GetControlID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get a unique ID for a control.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    // Prints a not used ID that can be assigned to a control    void OnGUI()
    {
        // Gets a ID for a control that cannot receive keyboard focus (A button)
        Debug.Log("Available id: " + GUIUtility.GetControlID(FocusType.Passive));
    }
}
```

### Description

Get a unique ID for a control, using an integer as a hint to help ensure correct matching of IDs to controls.

### Description

Get a unique ID for a control, using a the label content as a hint to help ensure correct matching of IDs to controls.
