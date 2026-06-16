<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture3D.Apply.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| updateMipmaps | When the value is `true`, Unity recalculates mipmap levels, using mipmap level 0 as the source. The default value is `true`. |
| makeNoLongerReadable | When the value is `true`, Unity deletes the texture in CPU memory after it uploads it to the GPU, and sets isReadable to `false`. The default value is `false`. |

### Description

Copies changes you've made in a CPU texture to the GPU.

For most types of textures, Unity can store a copy of the texture in both CPU and GPU memory.

The CPU copy is optional. If the CPU copy exists, you can read from and write to the CPU copy more flexibly than the GPU copy, for example using GetPixels. But to render the updated texture, you must use `Apply` to copy it from the CPU to the GPU.

If you set `makeNoLongerReadable` to `true`, Unity deletes the CPU copy of the texture after it uploads it to the GPU.

You usually only set `updateMipmaps` to `false` if you've already updated the mipmap levels, for example using SetPixels.

`Apply` is an expensive operation because it copies all the pixels in the texture even if you've only changed some of the pixels, so change as many pixels as possible before you call it.
