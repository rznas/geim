<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.LightDataGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The interop structure to pass light information to the light baking backends. There are helper structures for Directional, Point, Spot and Rectangle lights to correctly initialize this structure.

### Properties

| Property | Description |
| --- | --- |
| color | The color of the light. |
| coneAngle | The cone angle for spot lights. |
| cookieScale | The uniform scale factor for downscaling cookies during lightmapping. Can be used as an optimization when full resolution cookies are not needed for indirect lighting. |
| cookieTextureEntityId | The cookie texture's entityId projected by the light. |
| entityId | The light's entityId. |
| falloff | The falloff model to use for baking point and spot lights. |
| indirectColor | The indirect color of the light. |
| innerConeAngle | The inner cone angle for spot lights. |
| mode | The lightmap mode for the light. |
| orientation | The orientation of the light. |
| position | The position of the light. |
| range | The range of the light. Unused for directional lights. |
| shadow | Set to 1 for shadow casting lights, 0 otherwise. |
| shape0 | The light's sphere radius for point and spot lights, or the width for rectangle lights. |
| shape1 | The height for rectangle lights. |
| type | The type of the light. |

### Public Methods

| Method | Description |
| --- | --- |
| Init | Initialize the struct with the parameters from the given light type. |
| InitNoBake | Initialize a light so that the baking backends ignore it. |
