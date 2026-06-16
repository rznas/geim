<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorGUI.DrawTextureAlpha.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| position | Rectangle on the screen to draw the texture within. |
| image | Texture to display. |
| scaleMode | How to scale the image when the aspect ratio of it doesn't fit the aspect ratio to be drawn within. |
| imageAspect | Aspect ratio to use for the source image. If 0 (the default), the aspect ratio from the image is used. |
| mipLevel | What mip-level to sample. If negative, texture will be sampled normally. It sets material _Mip property. |

### Description

Draws the alpha channel of a texture within a rectangle.

Additional resources: GUI.color, GUI.contentColor


 *Alpha texture in an Editor Window.*
