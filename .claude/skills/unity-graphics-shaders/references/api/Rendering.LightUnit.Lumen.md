<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.LightUnit.Lumen.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The unit of luminous flux.

Describes the total amount of visible light that a light source emits in all directions. When you use this unit, the amount of visible light is independent of the source's size meaning the illumination level of a Scene does not change depending on the size of a light source. However, highlights that a light source produces dim as the area of the light source increases. This is because the same power is spread across a larger area.

A light source that emits 1 candela of luminous intensity from an area of 1 steradian has a luminous flux of 1 lumen.

Compatible light types: LightType.Point, LightType.Spot, LightType.Pyramid, LightType.Rectangle, LightType.Disc, LightType.Tube.

Additional resources: Light.lightUnit, light component.
