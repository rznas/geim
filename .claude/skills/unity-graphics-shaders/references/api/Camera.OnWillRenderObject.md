<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Camera.OnWillRenderObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

OnWillRenderObject is called for each camera if the object is visible.

This function is called if the object is deemed visible from the current camera after the culling process. The method is useful if you need a preparation step for every camera that is rendering the object. One example of this is rendering reflection onto a render texture. The reflection will be different for every camera's view point, and needs to be rendered before the original object. If the object gets culled away by a given camera, the reflections for that object will be skipped. For usage in a proper context, see the script `Water.cs` in *Assets->Import Package->Effects*.

Note that `Camera.current` will be set to the camera that will render the object. Also, this is called multiple times per frame.
