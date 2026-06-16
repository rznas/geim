<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Vector2.Reflect.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| inDirection | The direction vector towards the surface. |
| inNormal | The normal vector that defines the surface. |

### Description

Reflects a vector off the surface defined by a normal.

This method calculates a reflected vector using the following formula: v = inDirection - 2 * inNormal * dot(inDirection inNormal). The `inNormal` vector defines a surface. A surface's normal is the vector that is perpendicular to its surface. The `inDirection` vector is treated as a directional arrow coming into the surface. The returned value is a vector of equal magnitude to `inDirection` but with its direction reflected.
