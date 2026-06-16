<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Mesh.GetUVs.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| channel | The UV channel, in [0..7] range. |
| uvs | A list to populate with the UVs. |

### Description

Gets the texture coordinates (UVs) stored in a given channel.

Gets the UVs as a List of either Vector2, Vector3, or Vector4. 2 dimensional (Vector2) data is the most common use case, but 3 or 4 dimensional data is sometimes used for special shader effects.

Unity stores UVs in 0-1 space. [0,0] represents the bottom-left corner of the texture, and [1,1] represents the top-right. Values are not clamped; you can use values below 0 and above 1 if needed.

A `channel` value of 0 corresponds to the channel that is commonly called "UV0", and maps to the shader semantic `TEXCOORD0`. A `channel` value of 1 returns the channel that is commonly called "UV1", and maps to the shader semantic `TEXCOORD1`. This continues up to and including a `channel` value of 7.

By default, Unity uses the first channel (UV0) to store UVs for regular textures such as diffuse maps and specular maps. Unity can use the second channel (UV1) to store baked lightmap UVs, and the third channel (UV2) to store input data for real-time lightmap UVs. For more information on lightmap UVs and how Unity uses these channels, Lightmap UVs.

**Note:** You can also access UV data using uv for UV0, uv2 for UV1, uv3 for UV2, and so on up to uv8. However, this older way of working is not recommended; the properties are less user-friendly than this function and SetUVs, and they also cause heap allocations.

Additional resources: uv, SetUVs, AcquireReadOnlyMeshData.
