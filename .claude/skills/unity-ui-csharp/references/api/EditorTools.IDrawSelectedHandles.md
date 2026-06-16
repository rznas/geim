<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorTools.IDrawSelectedHandles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides non-interactive handles in a custom EditorTool when the tool is available.

You can use this interface to draw handles on a selection target before you've selected the custom tool (when the tool is not active). In the code example, the custom light tool inherits IDrawSelectedHandles and implements OnDrawHandles to draw handles on the lights even when the tool is not active.

 Additional resources: IDrawSelectedHandles.OnDrawHandles, EditorTool, EditorToolContext.

```csharp
using System;
using UnityEngine;
using UnityEditor;
using UnityEditor.EditorTools;[EditorTool("Light Tool", typeof(Light))]
public class CustomEditorLightTool : EditorTool, IDrawSelectedHandles
{
    // OnToolGUI is called when the tool is active. Interactive handles belong here.
    public override void OnToolGUI(EditorWindow window)
    {
        var position = Tools.handlePosition;        EditorGUI.BeginChangeCheck();        var result = Handles.PositionHandle(position, Quaternion.identity);        if (EditorGUI.EndChangeCheck())
        {
            var delta = result - position;            Undo.RecordObjects(Selection.transforms, "Move Lights");            foreach (var light in targets)
                ((Light)light).transform.position += delta;
        }
    }    // OnDrawHandles is called when a custom editor tool is available for the current selection. Use this to draw
    // information in the SceneView when any object matching the target type is selected.
    public void OnDrawHandles()
    {
        foreach (var light in targets)
        {
            // If the Light Tool is active, draw a green radius handle. If it is not active, make the radius blue.
            Handles.color = EditorTools.IsActiveTool(this) ? Color.green : Color.blue;
            Handles.RadiusHandle(Quaternion.identity, ((Light)light).transform.position, 2f);
            Handles.color = Color.white;
        }
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| OnDrawHandles | Implement this method to draw non-interactive handles when a custom editor tool is available. |
