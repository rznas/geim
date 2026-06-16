<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.DepthState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Values for the depth state.

Use this with RenderStateBlock and ScriptableRenderContext.DrawRenderers to override the GPU's render state.

Corresponds to the `ZTest` and `ZWrite` commands in ShaderLab.

Additional resources: RenderStateBlock, [[ScriptableRenderContext.DrawRenderers], ShaderLab command: ZTest, ShaderLab command: ZWrite.

### Static Properties

| Property | Description |
| --- | --- |
| defaultValue | Default values for the depth state. |

### Properties

| Property | Description |
| --- | --- |
| compareFunction | How should depth testing be performed. |
| writeEnabled | Controls whether pixels from this object are written to the depth buffer. |

### Constructors

| Constructor | Description |
| --- | --- |
| DepthState | Creates a new depth state with the given values. |
