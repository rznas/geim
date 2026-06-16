<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/WebGPU-features.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to the WebGPU graphics API

Enhance your Web project with WebGPU’s advanced graphics capabilities.

WebGPU is a web graphics API that provides low-level, high-performance access to modern GPU features. This information covers the features WebGPU uniquely supports and some features it doesn’t support yet.

## The features of WebGPU

In the browser, WebGPU uses modern GPU frameworks such as DirectX 12, Vulkan, or Metal (depending on your device) to improve visuals and optimize performance. Access to these frameworks let WebGPU introduce advanced graphics capabilities that aren’t possible with WebGL2, including:

- Compute shaders
- Indirect rendering
- GPU skinning
- [VFX Graph](https://unity.com/visual-effect-graph)

## Features with no support in WebGPU

Although WebGPU unlocks useful graphics features, there are a few it doesn’t support yet:

- Async compute
- Dynamic resolution
- Cubemap arrays

WebGPU also has some limitations you need to be aware of. For more information, refer to Limitations of WebGPU.

## Additional resources

- WebGPU (Experimental)
- Limitations of the WebGPU graphics API
- Enable the WebGPU graphics API
