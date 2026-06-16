<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/HandleUtility.CalcLineTranslation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| src | The source point of the drag. |
| dest | The destination point of the drag. |
| srcPosition | The 3D position the dragged object had at `src` ray. |
| constraintDir | Normalized 3D direction of constrained movement. |

### Returns

**float** The distance travelled along constraintDir.

### Description

Map a mouse drag onto a movement along a line in 3D space.

Certain types of Handles (such as arrows) involve movement along a line in 3D space. For example, the Transform's position arrows move the object along its local X, Y or Z axis as the mouse is dragged. The CalcLineTranslation function converts the movement of the mouse into constrained movement along a 3D line in the familiar way used by Unity's built-in tools.
