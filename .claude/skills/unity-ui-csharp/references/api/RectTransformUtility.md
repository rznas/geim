<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransformUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Utility class containing helper methods for working with RectTransform.

### Static Methods

| Method | Description |
| --- | --- |
| CalculateRelativeRectTransformBounds | Creates a Bounds object that encapsulates all the child RectTransform objects found in the child parameter, and converts the resulting bounds into local space relative to the root transform. |
| FlipLayoutAxes | Flips the horizontal and vertical axes of the RectTransform size and alignment, and optionally its children as well. |
| FlipLayoutOnAxis | Flips the alignment of the RectTransform along the horizontal or vertical axis, and optionally its children as well. |
| PixelAdjustPoint | Convert a given point in screen space into a pixel correct point. |
| PixelAdjustRect | Given a rect transform, return the corner points in pixel accurate coordinates. |
| RectangleContainsScreenPoint | Does the RectTransform contain the screen point? |
| ScreenPointToLocalPointInRectangle | Transform a screen space point to a position in the local space of a RectTransform that is on the plane of its rectangle. |
| ScreenPointToRay | Transforms a screen space position into a ray. |
| ScreenPointToWorldPointInRectangle | Transform a screen space point to a position in world space that is on the plane of the given RectTransform. |
| WorldToScreenPoint | Transforms a position in world space into a screen space point. |
