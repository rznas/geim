<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gizmos.DrawIcon.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| center | The location of the icon in world space. |
| name | The file name of the image relative to the **Assets/Gizmos** folder. |
| allowScaling | Whether the icon is permitted to be scaled. |
| tint | A tint applied to the icon. (Optional). |

### Description

Draw an icon at a position in the Scene view.

Place the image file in the **Assets/Gizmos** folder.

DrawIcon can be used to allow important objects in your game to be selected quickly.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    void OnDrawGizmos()
    {
        // Draws the Light bulb icon at position of the object.
        // Because we draw it inside OnDrawGizmos the icon is also pickable
        // in the scene view.        Gizmos.DrawIcon(transform.position, "Light Gizmo.tiff", true, Color.red);
    }
}
```
