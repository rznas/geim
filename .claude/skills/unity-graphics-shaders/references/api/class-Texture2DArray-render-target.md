<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-Texture2DArray-render-target.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Render to a 2D texture array

To render to a 2D texture array, create a render texture and set the **Dimension** property to **2D Array**.

If you use the `Graphics.SetRenderTarget` API, set the `depthSlice` parameter to the slice you want to render to.

If the platform supports geometry shaders, use a geometry **shader** to render to individual slices, or set `depthSlice` to `-1` to render to all the slices.
