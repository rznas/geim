<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Terrain-preserveTreePrototypeLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to specify how Unity chooses the layer for tree instances.

Unity automatically assigns a layer to the tree instances on your terrain. This property allows you to specify whether the tree instances should have the same layer value as the terrain GameObject, or whether they should take on the same layer value as their tree prototype Prefab (which means each type of tree can have a unique layer value). The default is false, which means trees get the terrain GameObject's layer. Set this value to true if you want your trees to take on the layer value of their prototype Prefabs.
