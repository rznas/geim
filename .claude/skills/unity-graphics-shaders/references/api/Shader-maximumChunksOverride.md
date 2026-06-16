<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Shader-maximumChunksOverride.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Sets the limit on the number of shader variant chunks Unity loads and keeps in memory.

You can use `maximumChunksOverride` to limit the amount of memory Unity uses for shader variants. You can use the following values:

- A positive value to set the maximum number of compressed shader variant chunks you want Unity to load and decompress into memory at one time.
- `0` to load and decompress all the chunks into memory.
- A negative value to use the value in PlayerSettings.GetDefaultShaderChunkCount.

The value only has an effect on shaders Unity has not yet loaded. If you change the value, Unity does not reload shaders in memory.

Additional resources: PlayerSettings.SetDefaultShaderChunkCount.
