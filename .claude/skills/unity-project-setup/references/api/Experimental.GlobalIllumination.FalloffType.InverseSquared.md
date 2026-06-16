<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.FalloffType.InverseSquared.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Inverse squared distance falloff model.

This is a physically based falloff model for point and spot lights. The falloff model falls off with the inverse squared distance between the light and the point being shaded. This means that observed light is very bright when the surface is close to the light and falls off rapidly as the distance increases.

This is fundamentally different from non physically based falloff models. When switching to this falloff model the intensity takes on a physical unit and a much higher value is typically needed in order to see the effect of the light. A light with 1 lumens is **very** dim.

The distance is in Unity units (metric: 1 = 1m). The falloff is only defined within the range of the light and **smoothly** falls off to zero at the light range. This is strictly speaking not physically based but a useful optimization. The minimum distance used for the calculation is 1cm in order to avoid numerical issues.
