<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-activeTerrain.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The active Terrain. This is a convenient function to get to the main Terrain in the Scene.

If you have multiple active Terrains, this returns only one of them. If you need all the terrains in the scene, use Terrain.activeTerrains instead. A terrain is active when the component that represents it is enabled and the GameObject it is on is active.
