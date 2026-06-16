<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Undo.AddComponent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The game object you want to add the component to. |
| type | The type of component you want to add. |

### Returns

**Component** The newly added component.

### Description

Adds a component to the game object and registers an undo operation for this action.

If the undo is performed, the newly added component will be destroyed.

### Parameters

| Parameter | Description |
| --- | --- |
| gameObject | The game object you want to add the component to. |

### Returns

**T** The newly added component.

### Description

Generic version.
