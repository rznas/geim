<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemRenderer-maskInteraction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies how the Particle System Renderer interacts with SpriteMask.

By default, particles do not interact with SpriteMasks and are visible regardless of whether you assign a SpriteMask or not. You can make the ParticleSystemRenderer visible either inside or outside a SpriteMask. To do the former, set this to SpriteMaskInteraction.VisibleInsideMask. To do the latter, set this to SpriteMaskInteraction.VisibleOutsideMask. Additional resources: SpriteMaskInteraction.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    private ParticleSystemRenderer psr;
    public SpriteMaskInteraction maskInteraction;    void Start()
    {
        psr = GetComponent<ParticleSystemRenderer>();
    }    void Update()
    {
        psr.maskInteraction = maskInteraction;
    }    void OnGUI()
    {
        maskInteraction = (SpriteMaskInteraction)GUI.SelectionGrid(new Rect(25, 25, 900, 30), (int)maskInteraction, new GUIContent[] { new GUIContent("No Masking"), new GUIContent("Visible Inside Mask"), new GUIContent("Visible Outside Mask") }, 3);
    }
}
```
