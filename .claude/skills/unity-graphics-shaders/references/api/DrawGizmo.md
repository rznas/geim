<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/DrawGizmo.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The DrawGizmo attribute allows you to supply a gizmo renderer for any Component.

The renderer function must be static, and take two parameters: the object for which the gizmo is being drawn, and a GizmoType parameter which indicates the context in which the gizmo is being drawn.

 The renderer function can be defined in any class, including editor scripts. This allows you to keep your gizmo-drawing code out of your component scripts so that it is not included in builds.

Additional resources: GizmoType.

```csharp
using UnityEngine;
using UnityEditor;public class MyScript : MonoBehaviour
{
}// The icon has to be stored in Assets/Gizmospublic class MyScriptGizmoDrawer
{
    [DrawGizmo(GizmoType.Selected | GizmoType.Active)]
    static void DrawGizmoForMyScript(MyScript scr, GizmoType gizmoType)
    {
        Vector3 position = scr.transform.position;        if (Vector3.Distance(position, Camera.current.transform.position) > 10f)
            Gizmos.DrawIcon(position, "MyScript Gizmo.tiff");
    }
}
```

### Constructors

| Constructor | Description |
| --- | --- |
| DrawGizmo | Defines when the gizmo should be invoked for drawing. |
