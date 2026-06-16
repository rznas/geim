<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.VectorGraphics.VectorUtils.WorldTransformedSceneNodes.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| root | The starting node of the hierarchy |
| nodeOpacities | Storage for the resulting node opacities, may be null |

### Returns

**IEnumerable<SceneNodeWorldTransform>** An enumeration of every node with their pre-computed world transforms, opacities and paths.

### Description

Iterates through every nodes under a root with computed transform and opacities.
