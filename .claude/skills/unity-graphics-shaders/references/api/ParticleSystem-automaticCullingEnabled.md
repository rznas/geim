<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystem-automaticCullingEnabled.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Does this system support Automatic Culling?

Internally, each Particle System has 2 modes of operating: procedural and non-procedural.

In procedural mode, it is possible to know the state of a Particle System for any point in time (past and future) whereas a non-procedural system is unpredictable. This means that it is possible to quickly fast forward (and rewind) a procedural system to any point in time.

When a system goes out of the view of any camera, it is culled. When this occurs, the procedural system stops updating. It will efficiently fast forward to the new point in time when the system becomes visible again. A non-procedural system cannot do this, so it must continue updating itself even when offscreen, due to its unpredictable nature.

In order to support Automatic Culling, you can only use a subset of the Particle System modules and properties. For example, using the Limit Velocity over Lifetime module will disable Automatic Culling. Additionally, modifying any properties from script whilst the system is playing will also disable Automatic Culling.

To discover if you are using any properties that disable this feature, a small speech bubble appears in the upper right corner of the Inspector. The tooltip for this icon gives you details about why Automatic Culling is disabled.
