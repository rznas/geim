<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-dilatedRange.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum distance the emitted light might travel from the position of the light. This property does not apply to directional lights.

The intensity might fall off to zero before the light reaches this distance.

For non-area lights, the Light.dilatedRange property and the Light.range property return the same value. For area lights, Light.dilatedRange is larger than Light.range as it takes the size of the area light into account.
