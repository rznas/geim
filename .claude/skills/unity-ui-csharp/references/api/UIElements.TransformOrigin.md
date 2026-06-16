<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.TransformOrigin.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents the point of origin where the transformations (Scale, Translate, and Rotate) are applied.

By default, transform-origin is set in percentages relative to the element's size. For example, 50% 50% sets the origin to the center of the element. These percentages are calculated based on the element’s resulting layout size (resolvedStyle.height and resolvedStyle.width). You can also specify transform-origin in pixels. The origin is determined based on the local coordinate system of the element, where the top-left corner is considered the origin point (0,0) regardless of whether you use percentages or pixels. Negative values and values larger than 100% are valid and move the transform-origin outside the element.

### Constructors

| Constructor | Description |
| --- | --- |
| TransformOrigin |  |

### Static Methods

| Method | Description |
| --- | --- |
| Initial | Returns the initial value for the TransformOrigin property. |
