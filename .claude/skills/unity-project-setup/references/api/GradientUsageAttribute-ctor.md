<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GradientUsageAttribute-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| hdr | Set to true if the colors should be treated as HDR colors (default value: false). |
| colorSpace | The colors should be treated as from this color space (default value: ColorSpace.Gamma). |

### Description

Attribute for gradient fields. Used to configure the GUI for the Gradient Editor.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    // Inspector editor for this gradient
    // allows to setup regular low dynamic range
    // colors.
    public Gradient defaultGradient;    // Inspector editor for this gradient allows
    // to setup HDR colors.
    [GradientUsage(true)]
    public Gradient hdrGradient;
}
```
