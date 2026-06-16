<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.PanelInputConfiguration-interactionLayers.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Physics layers considered when casting world-space rays to determine the target of pointer events. Any UnityEngine.UIElements.UIDocument with one or more Collider on the Interaction Layers, or with GameObject children with colliders on the Interaction Layers, sends pointer events corresponding to the input rays to its panel. Other Colliders on those layers block panel events.

All layers except the Ignore Raycasts layer are enabled by default.

If World Space input is disabled, this property has no effect.
