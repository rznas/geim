<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.BoundProperty-index.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The index of this BoundProperty to the internal list of bound properties.

The bound property index is recycled when a domain reload occurs or when either the GameObject or Component associated with a BoundProperty is destroyed. When the index is recycled, the system increments the version identifier. To represent the same BoundProperty, the Index and the Version must match. If the Index and Version differ, then the Index has been recycled.
