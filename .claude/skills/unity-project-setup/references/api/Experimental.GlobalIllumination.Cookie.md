<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.GlobalIllumination.Cookie.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A helper structure used to initialize a LightDataGI structure with cookie information.

### Properties

| Property | Description |
| --- | --- |
| entityId | The cookie texture's entityId projected by the light. |
| scale | The uniform scale factor for downscaling cookies during lightmapping. Can be used as an optimization when full resolution cookies are not needed for indirect lighting. |
| sizes | The scale factors controlling how the directional light's cookie is projected into the scene. This parameter should be set to 1 for all other light types. |

### Static Methods

| Method | Description |
| --- | --- |
| Defaults | Returns a default initialized cookie helper struct. |
