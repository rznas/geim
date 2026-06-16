<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ContactFilter2D.IsFilteringLayerMask.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| obj | The GameObject used to check the GameObject.layer. |

### Returns

**bool** Returns true when `obj` is excluded by the filter and false if otherwise.

### Description

Checks if the GameObject.layer for `obj` is included in the layerMask to be filtered.

Filtering is defined as including or excluding objects based upon a specific condition. Layer mask filtering checks the GameObject.layer and includes it when it is within the layer mask and excludes it if otherwise. IsFilteringLayerMask returns true when useLayerMask is set to true and the `obj` layer mask is not included by layerMask. This indicates the `obj` is filtered which means it should be excluded. IsFilteringLayerMask returns false if otherwise.

Additional resources: useDepth, ::ref:minDepth & maxDepth.
