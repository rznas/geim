<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/preferences-2d.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# 2D preferences tab reference

The **2D** tab of the **Preferences** window allows you to define the settings of 2D features and packages. When you install 2D packages such as the [2D Tilemap Editor](https://docs.unity3d.com/Packages/com.unity.2d.tilemap@latest) package, their preference settings appear in this section.

To open the preferences, go to **Edit** > **Preferences** > **2D** (macOS: **Unity** > **Settings** > **2D**).

## Animation tab

This tab is available only if you install the [2D Animation](https://docs.unity3d.com/Packages/com.unity.2d.animation@latest) package. For more information, refer to Skinning Editor preferences.

## Aseprite Importer tab

This tab is available only if you install the [2D Aseprite Importer](https://docs.unity3d.com/Packages/com.unity.2d.aseprite@latest) package. For more information, refer to Aseprite Importer preferences.

## Grid Brush tab

This tab is available only if you install the [2D Tilemap Editor](https://docs.unity3d.com/Packages/com.unity.2d.tilemap@latest) package.

Use the following settings to customize the default behavior of the Grid Paint tool when you use it to paint in the Tile Palette window. To access these settings, go to **Edit** > **Preferences** > **2D** > **Grid Brush**.

| **Property** | **Description** |
| --- | --- |
| **Show Flood Fill Preview** | Displays a preview when you use the Flood Fill tool and hover over the Active Target in the **Scene** view. If the preview displays many tiles at once, performance can be negatively affected. Disable this setting to improve performance. |
| **Flood Fill Preview Fill Extents** | Sets the extent from the current cursor position that the Flood Fill preview displays. This value is the number of tiles extended from the current cursor position along the x and y-axis. Setting this to 0 causes an unlimited extent, which can cause performance issues. Set a lower value to limit the number of tiles in the preview. This property is available only when you enable **Show Flood Fill Preview**. |
| **Flood Fill Preview Erase Extents** | Sets the extent from the current cursor position that the Flood Fill preview displays when the Flood Fill tool erases tiles. This value is the number of tiles extended from the current cursor position along the x and y-axis. Setting this to 0 causes an unlimited extent, which can cause performance issues. Set a lower value to limit the number of tiles in the preview. This property is available only when you enable **Show Flood Fill Preview**. |

## Physics tab

Configure the colors Unity uses for 2D physics collision shapes in the **Scene view**.

### Colliders

| **Property** | **Description** |
| --- | --- |
| **Awake Color (Outline)** | Sets the outline color of a **collision** shape when the **Rigidbody** 2D component is awake. |
| **Awake Color (Filled)** | Sets the fill color of a collision shape when the Rigidbody 2D component is awake. |
| **Asleep Color (Outline)** | Sets the outline color of a collision shape when the Rigidbody 2D component is asleep. |
| **Asleep Color (Filled)** | Sets the fill color of a collision shape when the Rigidbody 2D component is asleep. |
| **Bounds Color** | Sets the color of the bounds for all the `PhysicsShape2D` objects a **Collider** 2D component creates. |
| **Composited Color** | Sets the outline color of the individual collision shapes in a Composite Collider 2D component. |

### Contacts

Configure the colors Unity uses for physics contacts in the Scene view.

| **Property** | **Description** |
| --- | --- |
| **Contact Color** | Sets the color of the arrow that Unity displays when a contact occurs between two collision shapes. |
| **Contact Arrow Scale** | Sets the scale of the arrow. |

## Sprite Editor Window tab

Configure the **Sprite Editor** window. This tab is available only if you install the [2D Sprite](https://docs.unity3d.com/Packages/com.unity.2d.sprite@latest) package.

| **Property** | **Description** |
| --- | --- |
| **Show Apply Confirmation** | Warns you before Unity saves your edits to the **sprite**. |
| **Show Revert Confirmation** | Warns you before Unity reverts your edits to the sprite. |

## Sprite Shape tab

This tab is available only if you install the [2D SpriteShape](https://docs.unity3d.com/Packages/com.unity.2d.spriteshape@latest) package. For more information, refer to Sprite Shape preferences.

## Tile Palette tab

This tab is available only if you install the [2D Tilemap Editor](https://docs.unity3d.com/Packages/com.unity.2d.tilemap@latest) package. For more information, refer to Tile Palette preferences reference.

## Additional resources

- Set up a project for 2D games
- Project Settings reference
- 2D game development
- 2D physics
