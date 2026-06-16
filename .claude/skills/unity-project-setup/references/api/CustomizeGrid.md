<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/CustomizeGrid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Customize the grid

Customize the grid in the **Scene** view window. You can do the following to customize the grid:

- Display and hide grid lines in the **Scene view**.
- Change which axis the grid displays on.
- Resize the grid.
- Change the color of the grid lines.
- Change the opacity of the grid lines.
- Add custom position and rotation to the grid.
- Reset grid settings to default.

Most grid settings are available in the Grid and Snap overlay. To highlight the **Grid and Snap** overlay in the Scene view, press **`** to open the overlay menu, and then hover over **Grid and Snap**.

## Display and hide grid lines in the Scene view

To toggle whether the grid is visible in the Scene view, select **Toggle grid visibility** in the Grid and Snap overlay.

## Change which axis the grid displays on

If you are in orthographic mode (Iso) and align your view with an axis, the Editor displays the grid axis orthogonal to that axis.

To change which axis the grid appears on:

1. In the **Grid and Snap** overlay, select **Open Grid and Snap Settings**.
2. In the **Grid and Snap Settings** window, in **Grid Plane**, select the axis you want the grid to display on.

## Resize the grid

You can set the size of the grid lines that display in the Scene view window. The size of the grid affects how your grid looks and how your **GameObjects** snap to the grid.

If you set a size for all axes at once, you display a uniform, square-based, grid. However, you can also use different values on any of the three axes to display a non-uniform, rectangular-based, grid. By default, the grid is set to a uniform size of 1 on all axes.

To set a size for all axes of the grid at once, enter a value in the **Grid size** field in the **Grid and Snap overlay**.

To set a size for each axis separately:

1. In the **Grid and Snap** overlay, select **Open Grid and Snap Settings**.
2. In the **Grid and Snap Settings** window, in **Grid size**, make sure the link icon is not selected.
3. Enter a value for the **X**, **Y**, and **Z** properties to set the size of the grid lines on each axis.

**Tip**: You can also press **Ctrl**+**]** (macOS: **Command**+**]**) to increase the size of the grid and **Ctrl**+**[** (macOS: **Command**+**[**) to decrease the size of the grid. To learn more, refer to Grid and Snap shortcuts.

## Change the color of the grid lines

To change the color of the visible grid lines in the **Scene view** window:

1. Open the Unity Preferences window.
2. Select the **Colors** tab in the Preferences window.
3. Use the color picker to set a new color.

## Change the opacity of the grid lines

To adjust the brightness of the grid lines:

1. In the **Grid and Snap** overlay, select **Open Grid and Snap Settings**.
2. In the **Grid and Snap Settings** window, use the **Opacity** slider to make the grid more or less visible in the Scene view.

## Add custom position and rotation to the grid

To transform the grid, apply a selected GameObject’s handle position and rotation to the grid, or enter specific position and rotation values.

Absolute grid snapping works well for levels composed of rectangular areas aligned to grid lines. However, if your level elements are rotated (such as angled bridges or pathways), absolute grid snapping is less useful, and new customized grids are crucial.

To add custom position and rotation to the grid:

1. In the **Grid and Snap** overlay, select **Open Grid and Snap Settings**.
2. In the **Grid and Snap Settings** window, under **Grid Transform**, enter position and rotation values.

To apply a selected GameObject’s handle position and rotation to the grid:

1. Select a GameObject.
2. In the **Grid and Snap** overlay, select **Open Grid and Snap Settings**.
3. Select **Copy from Active Object**.

You can also right-click in the Scene view and select **Grid** > **Move to Handle Position**.

**Note**: To reset the grid to the world origin, in the **Grid and Snap Settings** window, select **Reset to World**. You can also right-click in the Scene view and select **Grid** > **Reset to World**.

## Reset grid values and settings to default

To reset all grid settings to their defaults:

1. In the **Grid and Snap** overlay, select **Open Grid and Snap Settings**.
2. Select the **More** menu (⋮).
3. Select **Reset**.

## Additional resources

- Scene view grid snapping
- Grid and Snap overlay
- Overlays
- The Scene view
- Position GameObjects
