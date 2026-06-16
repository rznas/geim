<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/configuring-flare-elements.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Configuring Flare elements

Learn how Unity manages elements on a Flare asset, and compare texture layout options.

A Flare consists of multiple **Elements**, arranged along a line. The line is calculated by comparing the position of the **GameObject** containing the Lens Flare to the center of the screen. The line extends beyond the containing GameObject and the screen center. All Flare **Elements** are strung out on this line.

For performance reasons, all **Elements** of one Flare must share the same Texture. This Texture contains a collection of the different images that are available as Elements in a single Flare. The **Texture Layout** defines how the **Elements** are laid out in the **Flare Texture**. If you use many different Flare assets, using a shared single **Flare Texture** that contains all the **Elements** will give you best rendering performance.

Lens Flares are blocked by **Colliders**. A Collider in-between the Flare GameObject and the **Camera** will hide the Flare, even if the Collider does not have a **Mesh Renderer**. If the in-between Collider is marked as Trigger it will block the flare if and only if **Physics.queriesHitTriggers** is true.

To override the **shader** used for Flares, open the Graphics window and set **Lens Flares** to the shader that you would like to use as the override.

## Understand texture layouts

These are the options you have for different Flare **Texture Layouts**. The numbers in the images correspond to the **Image Index** property for each **Element**.

### 1 Large 4 Small

Designed for large sun-style Flares where you need one of the **Elements** to have a higher fidelity than the others. This is designed to be used with Textures that are twice as high as they are wide.

### 1 Large 2 Medium 8 Small

Designed for complex flares that require 1 high-definition, 2 medium and 8 small images. This is used in the standard assets “50mm Zoom Flare” where the two medium Elements are the rainbow-colored circles. This is designed to be used with textures that are twice as high as they are wide.

### 1 Texture

A single image.

### 2x2 grid

A simple 2x2 grid.

### 3x3 grid

A simple 3x3 grid.

### 4x4 grid

A simple 4x4 grid.

Flare
