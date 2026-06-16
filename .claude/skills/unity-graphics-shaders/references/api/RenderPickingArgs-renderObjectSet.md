<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderPickingArgs-renderObjectSet.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A set of GameObjects to check and determine what this callback is expected to render.

Depending on renderPickingType, the GameObjects in this set are expected to be either included or excluded from the picking rendering. Refer to renderPickingType.

This set cannot be null, but it can be empty. Use RenderObjectSetContains to query whether a GameObject is contained in the set.
