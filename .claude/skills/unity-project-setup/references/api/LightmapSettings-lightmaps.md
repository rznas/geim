<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightmapSettings-lightmaps.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The array containing lightmap textures for all currently loaded scenes.

Unity automatically updates this array when scenes are loaded or unloaded. When a new scene is loaded, Unity appends the associated lightmaps to the end of the array. When a scene is unloaded, Unity removes the associated lightmaps from the array, and the array shrinks accordingly.

Renderer.lightmapIndex is an index into this array, and specifies which array element corresponds to the lightmap used by the renderer.

This property returns a copy of the lightmap array. Modifications to this copy have no effect on the currently loaded lightmaps. However, any modifications to the textures referenced by the array elements have an effect. To change the currently loaded lightmaps, you must assign the modified array back to this property. 

**Note**: Call the property sparingly to prevent performance issues.

You can assign arrays of any size to this property. Assigning an array will instantly change which lightmaps Unity uses for rendering. Use this to query, modify, swap, or remove lightmaps used for rendering.
