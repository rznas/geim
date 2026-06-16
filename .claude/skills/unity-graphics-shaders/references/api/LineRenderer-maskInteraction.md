<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LineRenderer-maskInteraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how the LineRenderer interacts with SpriteMask.

By default, lines do not interact with SpriteMasks and are visible regardless of whether you assign a SpriteMask or not. You can make the LineRenderer visible either inside or outside a SpriteMask. To do the former, set this to SpriteMaskInteraction.VisibleInsideMask. To do the latter, set this to SpriteMaskInteraction.VisibleOutsideMask. Additional resources: SpriteMaskInteraction.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(LineRenderer))]
public class ExampleClass : MonoBehaviour
{
    private LineRenderer r;
    public SpriteMaskInteraction maskInteraction;    void Start()
    {
        r = GetComponent<LineRenderer>();
    }    void Update()
    {
        r.maskInteraction = maskInteraction;
    }    void OnGUI()
    {
        maskInteraction = (SpriteMaskInteraction)GUI.SelectionGrid(new Rect(25, 25, 900, 30), (int)maskInteraction, new GUIContent[] { new GUIContent("No Masking"), new GUIContent("Visible Inside Mask"), new GUIContent("Visible Outside Mask") }, 3);
    }
}
```
