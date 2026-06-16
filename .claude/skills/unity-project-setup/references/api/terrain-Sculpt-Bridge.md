<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/terrain-Sculpt-Bridge.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Build a bridge between two points

**Note:** This tool is only available in the [Terrain Tools package](https://docs.unity3d.com/Packages/com.unity.terrain-tools@latest/).

Use the Bridge tool to connect two points on the **terrain**. A simple bridge is a straight line between the two points with a steady slope. The Bridge tool’s controls let you create more complex bridges.

## Use the tool

To draw a bridge:

1. In the Terrain tile’s **Inspector** window, select the **Paint Terrain** tool > tool dropdown > **Sculpt** > **Bridge**.
2. To select the bridge’s start point, hold **Ctrl** (macOS: hold **Option**) and click on the terrain.
3. To select the bridge’s end point, click anywhere else on the terrain.
4. To select a new start point, hold **Ctrl** (macOS: hold **Option**) again.

## Tool options

The Bridge tool is brush-based. To learn about working with brushes, refer to Brushes.

**Note:** The Bridge tool doesn’t use the **Brush Strength** property. Instead, the Bridge tool uses the **Strength Profile** curve.

## Bridge controls

Bridge controls are all curves: the y-axis is the value of the property, and the x-axis is the percentage along the path where that value applies. For example, in the **Width Profile** curves, except for the horizontal curve, the bridge becomes wider along its path, because it starts at `(0,0)` and goes to `(1,1)`. If, however, you start the bridge at `(0,5)` and go to `(1,1)`, the bridge narrows. If, as you progress along the x-axis, you lower and raise the y-axis value, you create a bridge that gets wider and narrower several times.

To open the **Curve** window, click the curve. For more information, refer to Edit animation curves.

**Note**: The Loop, Ping Pong, and Clamp controls apply only to **animation curves**; don’t use them for bridges.

| **Property** | **Description** |
| --- | --- |
| **Width Profile** | Sets the width of the bridge along its length. A complex curve gives a bridge that gets wider and narrower several times. A simple curve gives a bridge that gets wider in a fixed rate. |
| **Height Offest Profile** | Sets the height from the base of the bridge. A complex curve gives an undulating surface. A simple curve gives a well paved surface. |
| **Strength Profile** | Replaces the brush’s **Opacity** setting, and controls where the bridge is drawn along its path. A complex curve can create gaps in the bridge. |
| **Horizontal Offset Profile** | Creates curved bridges by moving the bridge to the left or right of its center line. A complex curve creates a zig-zag path. |

This image shows an example of a complex **Horizontal Offset Profile** curve, which creates a zig-zagging path:

This image shows an example of a complex **Width Profile** curve, which creates a series of connected platforms:

## Additional resources

- Erode the terrain
- Build a terrace
