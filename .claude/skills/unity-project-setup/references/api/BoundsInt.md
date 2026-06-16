<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/BoundsInt.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents an axis aligned bounding box with all values as integers.

An axis-aligned bounding box, or AABB for short, is a box aligned with coordinate axes and fully enclosing some object. As the box is never rotated with respect to the axes, it can be defined by min and max points.

### Properties

| Property | Description |
| --- | --- |
| allPositionsWithin | A BoundsInt.PositionCollection that contains all positions within the BoundsInt. |
| center | The center of the bounding box. |
| max | The maximal point of the box. |
| min | The minimal point of the box. |
| position | The position of the bounding box. |
| size | The total size of the box. |
| x | X value of the minimal point of the box. |
| xMax | The maximal x point of the box. |
| xMin | The minimal x point of the box. |
| y | Y value of the minimal point of the box. |
| yMax | The maximal y point of the box. |
| yMin | The minimal y point of the box. |
| z | Z value of the minimal point of the box. |
| zMax | The maximal z point of the box. |
| zMin | The minimal z point of the box. |

### Public Methods

| Method | Description |
| --- | --- |
| ClampToBounds | Clamps the position and size of this bounding box to the given bounds. |
| Contains | Is point contained in the bounding box? |
| SetMinMax | Sets the bounds to the min and max value of the box. |
| ToString | Returns a formatted string for the bounds. |
