<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GradientUsageAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls how the Gradient inspector editor treats the color values.

Use this attribute on a Gradient public script variable. You can control the colorSpace and hdr flags.

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

### Properties

| Property | Description |
| --- | --- |
| colorSpace | The color space the Gradient uses. |
| hdr | If set to true the Gradient uses HDR colors. |

### Constructors

| Constructor | Description |
| --- | --- |
| GradientUsageAttribute | Attribute for gradient fields. Used to configure the GUI for the Gradient Editor. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| applyToCollection | Makes attribute affect collections instead of their items. |
| order | Optional field to specify the order that multiple DecorationDrawers should be drawn in. |
