<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Lightmapping.BakeOnSceneLoadMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum describing whether a scene should be baked on load.

Additional resources: Lightmapping.bakeOnSceneLoad.

### Properties

| Property | Description |
| --- | --- |
| Never | Never bake a scene on load. |
| IfMissingLightingData | When opening a scene, generate lighting data for the scene, if there is none already available. This setting can be used when distributing scenes without lighting data, such that lighting data is automatically generated upon opening the scene. |
