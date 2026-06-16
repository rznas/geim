<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.BoundProperty-version.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The version of the BoundProperty.

Use this property to determine whether the BoundProperty object identifies an existing bound property.

During the life of an application, its Version can overflow and wrap around. For this reason, you cannot assume that a BoundProperty with a higher Version is more recent than a BoundProperty with a lower Version. The lower Version could be more recent.
