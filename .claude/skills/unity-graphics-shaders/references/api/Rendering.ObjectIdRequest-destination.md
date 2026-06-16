<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ObjectIdRequest-destination.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RenderTexture to store the rendering result of the request. The colors in this RenderTexture can be decoded to determine the object that was rendered at each pixel, first by decoding the color to an index using ObjectIdResult.DecodeIdFromColor and then by looking this index up in ObjectIdResult._idToObjectMapping.
