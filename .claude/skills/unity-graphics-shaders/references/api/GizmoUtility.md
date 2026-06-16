<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GizmoUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A static class for interacting with the Scene View icons and gizmos for types.

```csharp
using System;
using UnityEditor;
using UnityEngine;

namespace UnityEditor.Gizmos.Tests
{
// An Editor Window that lets you edit the gizmo and icon properties for each selected component.
    public class GizmoUtilityExample : EditorWindow
    {
        [MenuItem("Window/Gizmo Window")]
        static void Init() => GetWindow<GizmoUtilityExample>();

        Vector2 m_Scroll;

        void OnEnable()
        {
            autoRepaintOnSceneChange = true;
        }

        void OnGUI()
        {
            GizmoUtility.use3dIcons = EditorGUILayout.Toggle("3D Icons", GizmoUtility.use3dIcons);

            EditorGUI.BeginDisabled(!GizmoUtility.use3dIcons);
            GizmoUtility.iconSize = EditorGUILayout.Slider("3D Icon Size", GizmoUtility.iconSize, 0f, 1f);
            EditorGUI.EndDisabled();

            m_Scroll = EditorGUILayout.BeginScrollView(m_Scroll);

            foreach (var go in Selection.gameObjects)
            {
                GUILayout.Label($"{go.name} Gizmos", EditorStyles.boldLabel);

                EditorGUI.indentLevel++;
                foreach (var component in go.GetComponents<Component>())
                {
                    // A component can have gizmos, an icon, both, or neither. A gizmo can also be disabled (the Editor
                    // is collapsed in the Inspector).
                    if (GizmoUtility.TryGetGizmoInfo(component.GetType(), out GizmoInfo info))
                    {
                        EditorGUI.BeginChangeCheck();

                        if (info.hasGizmo)
                            info.gizmoEnabled = EditorGUILayout.Toggle($"{info.name} Gizmo", info.gizmoEnabled);

                        if (info.hasIcon)
                            info.iconEnabled = EditorGUILayout.Toggle($"{info.name} Icon", info.iconEnabled);

                        if (EditorGUI.EndChangeCheck())
                            GizmoUtility.ApplyGizmoInfo(info);
                    }
                }

                EditorGUI.indentLevel--;
            }

            EditorGUILayout.EndScrollView();
        }
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| iconSize | Control the size that 3D icons render in the Scene View. |
| use3dIcons | Determines whether icons in the Scene View are a fixed size (false) or scaled relative to distance from the camera and iconSize. |

### Static Methods

| Method | Description |
| --- | --- |
| ApplyGizmoInfo | Apply GizmoInfo.gizmoEnabled and GizmoInfo.iconEnabled for a GizmoInfo object. |
| GetGizmoInfo | Get GizmoInfo for all components with gizmos or icons in the project. |
| SetGizmoEnabled | Enable or disable gizmo rendering in the Scene View for a component type. Gizmos are the simple lines and guides drawn by component editors. For example, the Camera frustum guidelines are gizmos. |
| SetIconEnabled | Enable or disable icon rendering for all objects in the Scene View for a component type. |
| TryGetGizmoInfo | Get a GizmoInfo for a type if it exists. |
