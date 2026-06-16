<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RenderTexture-memorylessMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The render texture memoryless mode property.

Use this property to set or return the render texture memoryless modes.

Memoryless render textures are temporarily stored in the on-tile memory when it is rendered. It does not get stored in CPU or GPU memory. This reduces memory usage of your app but note that you cannot read or write to these render textures.

On-tile memory is a high speed dedicated memory used by mobile GPUs when rendering.

Memoryless render textures are supported when using the Metal graphics API on iOS 10+, tvOS 10+, and visionOS, or when using the Vulkan graphics API on Android-based platforms such as Meta Quest.

Additional resources: RenderTextureMemoryless.
