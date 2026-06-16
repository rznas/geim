<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CullingGroupEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides information about the current and previous states of one sphere in a CullingGroup.

Additional resources: CullingGroup.onStateChanged.

### Properties

| Property | Description |
| --- | --- |
| currentDistance | The current distance band index of the sphere, after the most recent culling pass. |
| hasBecomeInvisible | Did this sphere change from being visible to being invisible in the most recent culling pass? |
| hasBecomeVisible | Did this sphere change from being invisible to being visible in the most recent culling pass? |
| index | The index of the sphere that has changed. |
| isVisible | Was the sphere considered visible by the most recent culling pass? |
| previousDistance | The distance band index of the sphere before the most recent culling pass. |
| wasVisible | Was the sphere visible before the most recent culling pass? |
