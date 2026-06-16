<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ReflectionProbe-importance.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Reflection probe importance.

The bigger the value the more important the probe is. When deciding which probe to use for the object, Unity will always pick **Important** probe over the **Not Important**. This property also affects blending, if object is inside both **Important** and **Not Important** probe, only **Important** probe will be used, when object is leaving **Important** probe bounding box, it will gradually blend over **Not Important** probe. If both probes would have same importance, the object would use both probes.
