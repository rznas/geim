<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VirtualTexturing.Streaming.GetTextureStackSize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| mat | The Material that contains the Virtual Texture Stack. The Virtual Texture Stacks contained in a Material are declared in the Material's Shader. |
| stackNameId | The unique identifier for the name of the Virtual Texture Stack, as declared in the Shader. To find the identifier for a given Shader property name, use Shader.PropertyToID. |
| width | Unity populates `width` with the width of the Virtual Texture Stack, in pixels. |
| height | Unity populates `height` with the height of the Virtual Texture Stack, in pixels. |

### Description

Gets the width and height of a Virtual Texture Stack, in pixels.

The width and height of a Virtual Texture Stack are usually based on the width and height of the Textures assigned to the Material; however, various factors can cause the width and height of a Virtual Texture Stack to differ from the width and height of its Textures. Use this method to get the current width and height of a Virtual Texture Stack, in pixels.

Use this function to perform logic based on the width and height of the Virtual Texture Stack, such as calculating a mip level.

The width and height of a Virtual Texture Stack are constant for a given set of Textures. If you change the Textures assigned to the Material, the width and height of the Virtual Texture Stack might change.

If you pass invalid data to this method, such as a null Material or an invalid identifier, Unity will throw an exception and the values of `width` and `height` will remain unmodified.
