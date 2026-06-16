<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/troubleshooting-lightmapping-quality.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Troubleshooting lightmapping quality issues

If you use baked Global Illumination (GI), troubleshoot baked lighting quality issues such as flat normal maps, visible texture coordinate (UV) seams, blurry **lightmaps**, and aliasing. These issues make surfaces appear flat, disrupt texture continuity, or cause shadows to lose detail.

## Flat normal maps

This issue occurs if you use non-directional lightmaps with baked lighting. Non-directional lightmaps don’t capture the directionality of incoming light, which affects the appearance of surface detail when a **GameObject** has a normal map.

For more information about directional lightmaps, refer to Store light direction with Directional Mode.

**Note:** Non-directional lightmaps store the intensity of light at various points but don’t account for the direction from which the light is coming, which means they don’t work with normal maps. As a result, details that help give an illusion of relief might be missing.

### Symptoms

- Objects lose their depth effect, and the lighting appears flat after you bake if **Directional Mode** is disabled.
- Normal maps don’t provide a clear representation of relief.

### Cause

When you bake in non-directional mode, Unity doesn’t generate a secondary texture to store the dominant light direction.

### Resolution

To troubleshoot flat normal maps, do the following.

- Enable Directional Mode, so Unity stores light direction.
- In the ****Inspector**** window for each light, set **Light Mode** to **Mixed**, so Unity bakes indirect diffuse lighting. For more information, refer to Light Modes.

## Lightmap UV seams

Visible seams can appear in lightmaps due to GPU limitations when blending color values between separate UV charts, especially with high filtering or low lightmap resolution. Seams between objects are more pronounced in modular meshes.

### Symptoms

- Visible seams in lightmaps after baking.
- More noticeable seams when using modular meshes.
- Increased seam visibility if you use high filtering or low lightmap resolution.

### Cause

By default, GPUs don’t blend color values between separate UV charts, leading to visible seams in baked lightmaps. Filtering and low lightmap resolution can further exacerbate the issue by bleeding texel color values into adjacent UV charts.

### Resolution

To troubleshoot lightmap UV seams, do the following.

#### Enable Stitch Seams

Enable Stitch Seams to blend color values between UV charts that share a stitchable common edge.

**Note:** **Stitch Seams** only works for single GameObjects and doesn’t support multiple GameObjects.

#### Combine meshes in a digital content creation tool

To join overlapping vertices, do the following:

- Use a 3D modeling tool to merge modular meshes. Join overlapping vertices before you export, to prevent automatic lightmap unwrapping issues in Unity.
- Join overlapping vertices in the import Settings for a model.

#### Other possible solutions

- Use Mesh.CombineMeshes to merge multiple meshes into one, achieving a similar result as in a DCC tool.
- Convert meshes to ProBuilder using the ProBuilderize option. Use the [Merge Objects](https://docs.unity3d.com/Packages/com.unity.probuilder@latest/?subfolder=/manual/Object_Merge.html?q=merge) option to combine multiple objects.
- Disable filtering and denoising. This prevents blurring and dilation issues but can require increasing sample counts for cleaner results.
- Adjust **Lightmap Padding** to increase spacing between UV layouts in the UV atlas, reducing texel bleeding.
- For low-end platforms, use Light Probe Groups.
- For per-pixel lighting with streamlined placement, use Adaptive Probe Volumes (APV).
- If possible, use trim meshes to hide seams between objects.

## Blurry lightmaps

Low lightmap resolution results in blurry lighting effects due to insufficient texel density.

### Symptoms

- Shadows appear soft or lack detail.
- Lightmaps are stretched or distorted.
- Light leaks through geometry.

### Cause

Lightmaps require a sufficient resolution to accurately capture lighting information. Too few texels per unit can result in a loss of detail, while non-uniform UV scaling can distort the baked lighting output.

### Resolution

To troubleshoot blurry lightmaps, do the following:

- To adjust lightmap resolution globally, adjust the **Lightmap Resolution** property in the Lighting window. This changes the resolution for all objects in the **scene**.
- To adjust lightmap resolution per object, modify the **Scale in Lightmap** parameter in the Mesh Renderer component. This acts as a multiplier of the **Lightmap Resolution** setting.

**Note:** Increasing lightmap resolution significantly increases baking times and memory usage.

Recommended lightmap resolution settings:

- Use **Low Resolution** for:
  - Surfaces receiving uniform or indirect lighting.
  - Small objects.
  - Surfaces not visible to the player.
- Use **High Resolution** for:
  - Areas of high importance.
  - Surfaces receiving baked direct lighting and shadows.

#### Adjust the Max Lightmap Size property

The Max Lightmap Size property limits the final resolution of the lightmap. Increase this setting if:

- Objects exceed the maximum space in the lightmap atlas.
- Unity generates a high number of low-resolution lightmaps even after you increase the lightmap resolution.

#### Maintain uniform lightmap UV scale

To prevent stretched or distorted lightmaps, do the following:

- When you create custom lightmap UVs, scale UV charts uniformly across all axes.
- Avoid scaling individual UV charts disproportionately.
- When you scale GameObjects in the editor, ensure uniform scaling across all axes.
- Use the baked lightmap Scene View Debug Draw Mode to inspect lightmap uniformity, and enable **Show Lightmap Resolution** to visualize texel distribution.

## Lightmap aliasing

A stair-stepping effect can appear around edges, especially in high-contrast areas with baked direct lighting.

To address lightmap aliasing, do the following:

- In the **Lightmap Parameters Asset**, increase **Anti-aliasing Samples**. For more information, refer to Lightmap Parameters Asset.
- In the **Inspector** window for a light, adjust the **Baked Shadow Angle** property. For more information, refer to Light component Inspector window reference.
- In the **Lighting** window, set **Filtering** to **Advanced**, then under **Direct Filter** adjust **Radius**.

## Area distortion

Uneven lighting and artifacts can appear due to improper scaling of UV charts, leading to lower resolution in certain areas.

### Symptoms

- Uneven lighting across the surface.
- Blurry or pixelated lightmap artifacts in some areas.
- Lower resolution in some regions despite adequate lightmap settings.

**Example:**

In the image below, two spotlights with the same parameters light the sides of a cylinder. The right-hand side has a higher **Area Error value**, in the ****Mesh** Import** and **Generate Lightmap UVs** settings, which distorts the triangles and leads to a lower resolution, creating artifacts in the light.

### Cause

Area distortion occurs when UV charts are scaled improperly, leading to uneven texel distribution. This can happen when:

- The **Area Error** value is too high, causing variation in triangle sizes.
- UV charts are disproportionate to the object’s geometry, causing stretched or compressed areas.
- The automatic UV unwrapping process fails to balance texel distribution.

### Resolution

To minimize area distortion, do the following:

- Reduce the **Area Error** value in the UV settings.
- Inspect the UV layout to ensure charts are proportionally scaled.
- Manually adjust problematic UV charts in a 3D modeling application if necessary.
- Test different lightmap resolutions for optimal balance between texel density and memory usage.
- Re-bake the lightmap and check for improvements in resolution consistency.

## Angle distortion

Lighting artifacts can appear due to improperly shaped UV charts, leading to skewed or stretched textures in the baked lightmap.

### Symptoms

- Warped or stretched lighting artifacts in baked lightmaps.
- Inconsistent shading or lighting across different areas of the same mesh.
- Skewed or distorted UV charts in the layout.

**Example:**

The first image has a high **Angle Error**, resulting in artifacts. The second image has the default **Angle Error** (8%). Meshes with more triangles can experience significant angle distortion.

### Cause

Angle distortion occurs when the automatic UV unwrapping process fails to maintain correct angles between triangles. This can happen when:

- The **Angle Error** value, in the **Mesh Import** and **Generate Lightmap UVs** settings, is too high, causing excessive distortion in UV charts.
- The lightmap UV generation prioritizes minimizing seams over preserving accurate angles.
- The mesh has complex geometry, making it difficult to create an ideal UV layout.

### Resolution

To reduce angle distortion, do the following:

- Lower the **Angle Error** value in the UV settings.
- Check the UV charts to ensure they accurately represent the mesh geometry.
- Manually adjust the UV layout in a 3D modeling tool if necessary.
- Re-bake the lightmap and inspect for improvements in lighting accuracy.

## Additional resources

- Generate lightmap UVs
- Debug Draw Modes for lighting reference
- Lightmap Data Format
