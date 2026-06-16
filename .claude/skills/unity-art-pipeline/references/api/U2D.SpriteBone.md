<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/U2D.SpriteBone.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stores a set of information that describes the bind pose of this Sprite.

This struct describes the hierarchy and other spatial relationships between the bones of this Sprite.

### Properties

| Property | Description |
| --- | --- |
| color | Shows the color set for the bone in the Editor. |
| guid | The Unique GUID of this bone. |
| length | The length of the bone. This is important for the leaf bones to describe their length without needing another bone as the terminal bone. |
| name | The name of the bone. This is useful when recreating bone hierarchy at editor or runtime. You can also use this as a way of resolving the bone path when a Sprite is bound to a more complex or richer hierarchy. |
| parentId | The ID of the parent of this bone. |
| position | The position in local space of this bone. |
| rotation | The rotation of this bone in local space. |
