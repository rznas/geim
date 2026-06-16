<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TransformHandle.DetachChildren.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unparents all of the target object's children.

Each immediate child is moved to the root-level, preserving their internal hierarchies. This is useful if you want to destroy the root of a hierarchy without destroying the children, and is more efficient than unparenting each child individually.

Additional resources: TransformHandle.parent to detach/change the parent of a single transform.
