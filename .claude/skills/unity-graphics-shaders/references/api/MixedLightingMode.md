<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MixedLightingMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enum describing what lighting mode to be used with Mixed lights.

Summary of the baked data associated with each mode:

**IndirectOnly** 
 Lightmaps

- direct: no
- occlusion: no

Light probes

- direct: no
- occlusion: no

**Shadowmask** 
 Lightmaps

- direct: no
- occlusion: yes

Light probes

- direct: no
- occlusion: yes

**Subtractive** 
 Light maps

- direct: yes
- occlusion: no

Light probes

- direct: no
- occlusion: yes

### Properties

| Property | Description |
| --- | --- |
| IndirectOnly | Mixed lights provide real-time direct lighting while indirect light is baked into lightmaps and light probes. |
| Shadowmask | Mixed lights provide real-time direct lighting. Indirect lighting gets baked into lightmaps and light probes. Shadowmasks and light probe occlusion get generated for baked shadows. The Shadowmask Mode used at run time can be set in the Quality Settings panel. |
| Subtractive | Mixed lights provide baked direct and indirect lighting for static objects. Dynamic objects receive real-time direct lighting and cast shadows on static objects using the main directional light in the Scene. |
