<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AI.NavMeshLinkData-costModifier.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If positive, overrides the pathfinder cost to traverse the link.

When searching for a path this cost multiplies the Euclidean distance between the link end points when scoring the link. If the value is negative, the default cost based on area type is used. The value must be >= 1.0.
