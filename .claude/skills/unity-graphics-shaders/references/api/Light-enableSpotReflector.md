<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Light-enableSpotReflector.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Wether a Spot Light should simulate having a reflector.

When enabled, indicates that the Spot Light intensity should be simulated using a reflector. This means the narrower the Outer Angle, the more intense the Spot Light. When disabled, the intensity of the Light should match that of a Point Light and thus remains constant regardless of the Outer Angle. Only relevant for Spot Lights measued in LightUnit.Lumen. Only Scriptable Render Pipelines use this property; the built-in renderer does not support it.

Additional resources: LightUnit, Light component.
