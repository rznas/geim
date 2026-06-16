<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Rendering.ShaderWarmup.WarmupShader.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prewarms all shader variants for a given Shader, using a given rendering configuration.

For information on shader loading and prewarming, including a list of different prewarming techniques, see Shader loading.

Unity needs more information to correctly build GPU representations of the shader variants ('pipeline state objects' or PSOs) if your application runs on one of the following graphics APIs:

- DirectX 12
- Metal
- Vulkan

If Unity has this information, it's more likely the prewarmed variants match what the GPU needs when it renders your Scene.

To provide Unity with more information, you can do the following:

- Use the `setup` parameter to specify the vertex data layout you use with the shader.
- Before you call `WarmupShader`, set the render state so it's as close as possible to the state you use with the shader. For example, set the format of the render target, or use render state commands to set states such as blend mode.

Unity also asynchronously prewarms shader variants using multiple background threads, if your application runs on a platform that supports it. Unity uses as many threads as it can. In your built application, you can use the `-max-async-pso-job-count` command line argument to set the number of threads Unity uses.

Additional resources: ShaderWarmup.WarmupShaderFromCollection, Shader.WarmupAllShaders, ShaderVariantCollection.WarmUp
