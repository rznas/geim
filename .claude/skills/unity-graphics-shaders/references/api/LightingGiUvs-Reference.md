<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/LightingGiUvs-Reference.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Lightmap UVs Settings in the Model Import Settings Inspector window reference

These are the settings that appear in the **Model** tab of the Model Import Settings, when you enable **Generate**Lightmap__ UVs__.

| **Property:** | **Function:** |
| --- | --- |
| **Hard Angle** | The angle between neighboring triangles (in degrees) after which Unity considers it a hard edge and creates a seam. You can set this to a value between 0 and 180. This is set to 88 degrees by default.  If you set this to 180 degrees, Unity considers all edges smooth, which is realistic for organic models. The default value (88 degrees) is realistic for mechanical models. |
| **Angle Error** | The maximum possible deviation of UV angles from the angles in the source geometry (as a percentage from 0–100). This is set to 8% by default.  This controls how different the triangles in UV space can be from the triangles in the original geometry. Usually, this should be fairly low, to avoid artifacts when applying the lightmap. |
| **Area Error** | The maximum possible deviation of UV areas from the areas in the source geometry (as a percentage from 0–100). This is set to 15% by default.  This controls how well Unity preserves the relative triangle areas. Increasing the value allows you to create fewer charts. However, increasing the value can change the resolution of the triangles, so make sure the resulting distortion does not deteriorate the lightmap quality. |
| **Margin Method** | Whether you specify the Pack Margin manually, or whether Unity automatically calculates it.   **Manual**: You specify the Pack Margin manually.  **Calculate**: Based on expected lightmap resolution and object scale, Unity calculates a Pack Margin just large enough to avoid UV overlaps. |
| **Pack Margin** | The margin between neighboring charts (in pixels), assuming the Mesh takes up the entire 1024x1024 lightmap. You can set this to a value between 1 and 64. A larger value increases the margin, but also increases the amount of space the chart needs. This is set to 4 pixels by default.  For more information, see Pack Margin.  This property is only visible when **Margin Method** is set to **Manual**. |
| **Min Lightmap Resolution** | The minimum lightmap resolution (in texels per unit) of the MeshRenderers that use this Mesh, across all Scenes. The lightmap resolution of a MeshRenderer is a combination of the MeshRenderer’s `Scale in Lightmap` property, and the `Lightmap Resolution` property of the Lighting Settings Asset of the Scene it appears in.  For more information, see Min Lightmap Resolution and Min Object Scale.  Unity uses this information to calculate pack margin. This property is only visible when **Margin Method** is set to **Calculate**. |
| **Min Object Scale** | The minimum transform scale that of the GameObjects that use this Mesh, across all Scenes.  For more information, see Min Lightmap Resolution and Min Object Scale.  Unity uses this information to calculate pack margin. This property is only visible when **Margin Method** is set to **Calculate**. |
