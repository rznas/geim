<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.CustomPivotAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Registers a CustomPivotMode or CustomPivotRotation as a custom editor pivot setting. Use the PivotManager API or the Tool Settings overlay's UI to activate a registered setting.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.EditorTools;

// Register a custom Pivot Mode that places the tool handle at the top middle point of the active object's local bounds.
// This Pivot Mode will be available for any tool or context as neither the targetTool nor targetToolContext are specified.
[CustomPivot(k_DisplayName, tooltip = k_Tooltip, priority = CustomPivotAttribute.defaultPriority + 2)]
[Icon(k_Icon)] // Use IconAttribute to customize pivot setting's icon
public sealed class TopPivotMode : CustomPivotMode
{
    const string k_DisplayName = "Top";
    const string k_Icon = "ToolHandleGlobal";
    const string k_Tooltip = "The tool handle is placed at the top middle point of active object's local bounds.";

    public override Vector3 position
    {
        get
        {
            Transform t = Selection.activeTransform;
            if (!t)
                return Vector3.zero;

            var renderer = t.GetComponent<MeshRenderer>();
            if (!renderer)
                return Vector3.zero;

            var localBounds = renderer.localBounds;
            var localTopPivot = new Vector3(localBounds.center.x, localBounds.max.y, localBounds.center.z);

            var topPivotPosition = t.TransformPoint(localTopPivot);
            return topPivotPosition;
        }
    }
}
```

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.EditorTools;

// Register a custom Pivot Rotation that orients the tool handle to always face the Scene View's camera.
// This Pivot Rotation will be available for any tool or context as neither targetTool nor targetToolContext are specified.
[CustomPivot(k_DisplayName, tooltip = k_Tooltip, priority = CustomPivotAttribute.defaultPriority + 2)]
[Icon("ToolHandleGlobal")] // Use IconAttribute to customize pivot setting's icon
public sealed class ViewPivotRotation : CustomPivotRotation
{
    const string k_DisplayName = "View";
    const string k_Tooltip = "The tool handle is rotated to align with Scene View camera's orientation.";
    
    public override Quaternion rotation => SceneView.lastActiveSceneView.camera.transform.rotation;
}
```

### Static Properties

| Property | Description |
| --- | --- |
| defaultPriority | The default value for CustomPivotAttribute.priority. Specify a priority lower than this value to display a pivot setting before the default entries, or specify a higher value to display it after the default entries. |

### Properties

| Property | Description |
| --- | --- |
| displayName | The name to display for this pivot setting in the Editor's UI. |
| priority | Priority defines the order to display the pivot settings in within the Tools Settings overlay's dropdown menus. |
| targetTool | If provided, the pivot setting is only available when the ToolManager.activeToolType is equal to targetTool. |
| targetToolContext | If provided, the pivot setting is only available when the ToolManager.activeContextType is equal to targetToolContext. |
| tooltip | The tooltip to display in the Editor's UI for this pivot setting. |

### Constructors

| Constructor | Description |
| --- | --- |
| CustomPivotAttribute | Registers a CustomPivotMode or CustomPivotRotation as an additional option to the Editor's built-in pivot mode or rotation settings. |
