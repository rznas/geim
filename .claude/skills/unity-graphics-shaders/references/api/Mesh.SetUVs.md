<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.SetUVs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channel | The channel, in [0..7] range. |
| uvs | The UV data to set. |

### Description

Sets the texture coordinates (UVs) stored in a given channel.

Sets the UVs as a List of either Vector2, Vector3, or Vector4. 2 dimensional (Vector2) data is the most common use case, but 3 or 4 dimensional data is sometimes used for special shader effects.

Unity stores UVs in 0-1 space. [0,0] represents the bottom-left corner of the texture, and [1,1] represents the top-right. Values are not clamped; you can use values below 0 and above 1 if needed.

A `channel` value of 0 corresponds to the channel that is commonly called "UV0", and maps to the shader semantic `TEXCOORD0`. A `channel` value of 1 returns the channel that is commonly called "UV1", and maps to the shader semantic `TEXCOORD1`. This continues up to and including a `channel` value of 7.

By default, Unity uses the first channel (UV0) to store UVs for regular textures such as diffuse maps and specular maps. Unity can use the second channel (UV1) to store baked lightmap UVs, and the third channel (UV2) to store input data for real-time lightmap UVs. For more information on lightmap UVs and how Unity uses these channels, Lightmap UVs.

**Note:** You can also access UV data using uv for UV0, uv2 for UV1, uv3 for UV2, and so on up to uv8. However, this older way of working is not recommended; the properties are less user-friendly than this function and GetUVs, and they also cause heap allocations.

Additional resources: GetUVs.

### Parameters

| Parameter | Description |
| --- | --- |
| channel | The UV channel, in [0..7] range. |
| uvs | UVs to set for the given index. |
| start | Index of the first element to take from the input array. |
| length | Number of elements to take from the input array. |
| flags | Flags controlling the function behavior, see MeshUpdateFlags. |

### Description

Sets the UVs of the Mesh, using a part of the input array.

This method behaves as if you called SetUVs with an array that is a slice of the whole array, starting at `start` index and being of a given `length`. The resulting Mesh has `length` amount of vertices.
