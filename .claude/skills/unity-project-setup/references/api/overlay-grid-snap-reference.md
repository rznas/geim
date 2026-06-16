<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/overlay-grid-snap-reference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Grid and Snap overlay reference

Use the **Grid and Snap** overlay to modify how the **Scene** view grid looks, how **GameObjects** snap to the grid, and how GameObjects move incrementally.

The settings on the **Grid and Snap** overlay apply globally to all **Scene views**.

The **Grid and Snap** overlay **toolbar** contains the following settings:

| **Setting** | **Description** |
| --- | --- |
| **Toggle the visibility of the grid** | Displays or hides the grid in the Scene view. |
| **Grid size** | Sets the current grid size value. This value sets the size of the grid homogeneously on all axes. |
| **Open Grid and Snap Settings** | Opens the Grid and Snap Settings window. |
| **Toggle absolute Grid snapping** | Enables snapping to an absolute position on the grid when you use the **Move** tool on a GameObject. GameObject snapping happens along the axis of the handle. If your handle is set to **Local** rotation, snapping happens incrementally even if absolute snapping is enabled. |
| **Toggle incremental Grid snapping** | Enables incremental snapping when you use the **Move** tool on a GameObject. The GameObject snaps to an incremental position on the grid. |
| **Incremental snapping size** | Sets the increment snap value. |
| **Toggle angle snapping** | Enables snapping when you use the **Rotate** tool on a GameObject. |
| **Incremental angle snap size** | Sets the increment snap value for the **Rotate** tool to use. |
| **Toggle scale snapping** | Enables snapping when you use the **Scale** tool on a GameObject. |
| **Scale snap multiplier** | Sets the increment snap value for the **Scale** tool to use. |

## Grid and Snap Settings window reference

In the **Grid and Snap** overlay, select **Open Grid and Snap Settings** next to the grid size field to open the Grid and Snap Settings window.

The **Grid and Snap Settings** window contains the following settings:

| **Setting** | **Description** |
| --- | --- |
| **Display Grid** | Displays or hides the grid in the Scene view. |
| **Show closest grid to handle** | Displays the grid on a grid plane that is closest to the active handle position. |
| **Grid Plane** | Selects the axes to display the grid on. |
| **Opacity** | Controls the opacity of the grid. |
| **Grid Size** | Sets the size of the grid visuals and the absolute snap value to use for the **Move** tool by axis. |
| **Increment Snap** | Sets the incremental snap value to use for the **Move** tool by axis. |
| **Position** | Sets the origin position of the grid in the Scene view in world space. |
| **Rotation** | Sets the rotation of the grid in the Scene view in world space. |
| **Copy from Active Object** | Applies the position and rotation values of the selected GameObject to the grid. |
| **Apply Last Custom** | Restores the position and rotation of the grid to the last custom position and rotation. This setting is available only when the grid is at world origin and has no rotation. |
| **Reset to World** | Resets the grid to the world origin with default rotation. |

## Additional resources

- Scene view grid snapping
- Customize the grid
- Overlays
