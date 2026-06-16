<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.ToolAttribute-variantGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Tool variants are used to group logically similar tools into a single button in the Tools Overlay.

The variantGroup type acts a key to specify groups of tools that should be considered a group in the UI.

```csharp
using System;
using UnityEditor;
using UnityEditor.EditorTools;
using UnityEngine;

namespace GlobalToolVariants
{
    // Define 3 tools that should be shown as a single button in the Tools Overlay.
    struct ShapeVariantGroup {}

    [EditorTool("Line (Custom Global)", variantGroup = typeof(ShapeVariantGroup), variantPriority = 2)]
    [Icon("Assets/Examples/Icons/Variant-Line.png")]
    class Line : EditorTool {}

    [EditorTool("Circle (Custom Global)", variantGroup = typeof(ShapeVariantGroup), variantPriority = 1)]
    [Icon("Assets/Examples/Icons/Variant-Circle.png")]
    class Circle : EditorTool {}

    [EditorTool("Square (Custom Global)", variantGroup = typeof(ShapeVariantGroup), variantPriority = 0)]
    [Icon("Assets/Examples/Icons/Variant-Square.png")]
    class Square : EditorTool {}
}
```
