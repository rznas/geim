<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UsageHints.DynamicTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optimizes rendering of a VisualElement for frequent position and transformation changes.

This option uses the GPU instead of CPU to perform the VisualElement's vertex transformation.
 
 Use this option on a VisualElement that changes any of the following style properties:

- `left`
- `top`
- `right`
- `bottom`
- `position`
- `transform-origin`
- `rotate`
- `scale`
- `translate`
