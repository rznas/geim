<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-scene-view.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Scene view preferences reference

Customize these settings to control object placement and visibility while you edit in the ****Scene**** view.

To open these preferences, in the Unity Editor go to **Edit** > **Preferences** > **Scene View** (macOS: **Unity** > **Settings** > **Scene View**).

## General Scene view settings

The **General **Scene view** settings** section contains the following settings.

| **Setting** | **Description** |
| --- | --- |
| **3D Placement Mode** | Sets where newly created 3D objects are placed in the scene. The following options are available:  **World Origin**: Instantiates new 3D objects at world coordinates `0, 0, 0`.  **Scene Intersection**: Instantiates new 3D objects at the nearest collider in the center of the **Scene** view. If no collider is hit, the 3D object is instantiated at the `SceneView.pivot`.  **Scene Pivot**: Instantiates new 3D objects at the `SceneView.pivot`. |
| **Use **prefab** asset position when dropping on the Hierarchy window** | Places prefabs added to a scene through the **Hierarchy** window at the transform position value they were saved with. When disabled, prefabs are placed according to the **3D Placement Mode** setting. This setting is disabled by default. |
| **Create Objects with Constrained Proportions scale on** | Defines the default behavior for **Scale** in the Transform component. When enabled, changing a **GameObject**’s scale on any axis changes the other axes by the same amount. You can disable and enable this option for individual GameObjects in the ****Inspector**** window. |
| **Auto-hide **gizmos**** | Hides the gizmos of components collapsed in the **Inspector** window. |
| **Refresh the Scene view only when the Editor is in focus** | Ignores the **Always Refresh** flag on the **Scene** view when the Unity Editor is not the active application. |

## Scene view handles settings

The **Handles** section of the **Scene view** preferences contains the following settings.

| **Setting** | **Description** |
| --- | --- |
| **Line Thickness** | Sets the line thickness of your transform tools. |

## Scene view search settings

The **Search** section of the **Scene view** preferences contains the following settings.

| **Setting** | **Description** |
| --- | --- |
| **Enable filtering while searching** | Grays out any non-matching items in the **Scene** view. Enabled by default. |
| **Enable filtering while editing **LOD** groups** | Grays out other objects in the scene while you edit level of detail (LOD) groups. Enabled by default. |

## Additional resources

- Manage GameObjects in the Scene view
- Scene view reference
- Unity Editor preferences
- Level of detail (LOD) for meshes
- Gizmos menu
