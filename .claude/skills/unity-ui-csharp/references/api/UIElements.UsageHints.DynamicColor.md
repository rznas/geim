<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UsageHints.DynamicColor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Optimizes rendering of a VisualElement for frequent color changes, such as a built-in style color being animated.

This option fetches color from a GPU buffer to prevent re-tessellating geometry or CPU updates when colors change.

 Apply this option on a VisualElement that changes any of the following style properties:

- `background-color`
- `border-color`
- `color`
- `border-bottom-color`
- `border-left-color`
- `border-right-color`
- `border-top-color`
- `text-color`
- `unity-background-image-tint-color`
