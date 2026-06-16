<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UsageHints.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Offers a set of options that describe the intended usage patterns of a VisualElement. These options serve as guidance for optimizations. You can set multiple usage hints on an element. For example, if both position and color change, you can set both DynamicTransform and DynamicColor.
 
 **Note**: Set the usage hints at edit time or before you add the VisualElement to a panel. In the case of transition, when it starts, the system might automatically add missing relevant usage hints to avoid regenerating geometry in every frame. However, this causes a one-frame performance penalty because the rendering data for the VisualElement and its descendants is regenerated.

### Properties

| Property | Description |
| --- | --- |
| None | No particular hints applicable. |
| DynamicTransform | Optimizes rendering of a VisualElement for frequent position and transformation changes. |
| GroupTransform | Optimizes rendering of a VisualElement that changes its transformation and position frequently, and has many descendants that have their hints set to DynamicTransform. |
| MaskContainer | Optimizes rendering of a VisualElement that has multiple descendants with nested masks. |
| DynamicColor | Optimizes rendering of a VisualElement for frequent color changes, such as a built-in style color being animated. |
| DynamicPostProcessing | Optimizes rendering of a VisualElement that is subject to have post-processing effects (filters) applied to it. |
| LargePixelCoverage | Optimizes rendering of a VisuaElement that covers a large pixel area on screen. |
