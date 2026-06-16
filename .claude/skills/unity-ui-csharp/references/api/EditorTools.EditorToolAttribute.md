<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.EditorToolAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers an EditorTool as either a Global tool or a Component tool for a specific target type.

A Global tool works on any selection. A Global tool is also always available from the top toolbar. A Component tool, like a CustomEditor, is only available for selections that match a target type.

```csharp
using System.Collections.Generic;
using System.Linq;
using UnityEditor;
using UnityEngine;
using UnityEngine.Rendering;

public static class Drawing
{
    public static void DrawPoints(Transform transform, IList<Vector3> positions, Color color, float size)
    {
        if (positions == null || !positions.Any())
            return;

        var matrix = transform.localToWorldMatrix;
        DrawHandleCaps(matrix, positions, color * .3f, size, CompareFunction.Greater);
        DrawHandleCaps(matrix, positions, color, size, CompareFunction.LessEqual);
    }

    public static void DrawHandleCaps(Matrix4x4 transform, IList<Vector3> positions, Color color, float size, CompareFunction compare)
    {
        if (Event.current.type != EventType.Repaint)
            return;

        var camera = Camera.current;

        Vector3 sideways = (camera == null ? Vector3.right : camera.transform.right);
        Vector3 up = (camera == null ? Vector3.up : camera.transform.up);

        var prevColor = Handles.color;
        Handles.color = color;

        var prevCompare = Handles.zTest;
        Handles.zTest = compare;
        var world = transform.MultiplyPoint3x4(positions[0]);

        // DotHandleCap call sets up the material and GL state, so just re-use it to avoid expensive setup for each quad
        // Done this way because HandleUtility.ApplyWireMaterial is private
        Handles.DotHandleCap(0, world, Quaternion.identity, HandleUtility.GetHandleSize(world) * size, EventType.Repaint);
        GL.Begin(GL.QUADS);

        foreach (var p in positions)
        {
            var position = transform.MultiplyPoint(p);
            var handleSize = HandleUtility.GetHandleSize(position) * size;

            GL.Color(color);
            GL.Vertex(position + (sideways + up) * handleSize);
            GL.Vertex(position + (sideways - up) * handleSize);
            GL.Vertex(position - (sideways + up) * handleSize);
            GL.Vertex(position - (sideways - up) * handleSize);
        }

        GL.End();
        Handles.color = prevColor;
        Handles.zTest = prevCompare;
    }
}
```

You can also use tool variants to group similar tools into a single button in the Tools overlay. Refer to ToolAttribute.variantGroup.

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

### Constructors

| Constructor | Description |
| --- | --- |
| EditorToolAttribute | Registers an EditorTool as either a Global tool or a CustomEditor tool. |

### Inherited Members

### Static Properties

| Property | Description |
| --- | --- |
| defaultPriority | The default value for ToolAttribute.toolPriority and ToolAttribute.variantPriority. Specify a priority lower than this value to display a tool before the default entries, or specify a higher value to display it after the default entries. |

### Properties

| Property | Description |
| --- | --- |
| allowPersistentTargets | Allows the tool to target persistent objects. This is only compatible with ScriptableObjects. When you develop tools that target persistent objects, let users know whether they're editing an in-scene or a persistent object. |
| displayName | The name that displays in menus. |
| group | Tool groups place logically similar tools under a single header in the Tools Overlay. |
| targetContext | If provided, the EditorTool will only be made available when the ToolManager.activeContextType is equal to targetContext. |
| targetType | Set to the type that this EditorTool or EditorToolContext can edit. Set to null if the tool is not specific to a Component and should be available at any time. |
| toolPriority | Tool priority defines the order that tools are displayed in within the Tools Overlay. |
| variantGroup | Tool variants are used to group logically similar tools into a single button in the Tools Overlay. |
| variantPriority | The variant priority defines the order that tools are displayed in when they are displayed in a ToolAttribute.variantGroup dropdown. |
