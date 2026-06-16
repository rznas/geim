<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/WebGPU-limitations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Limitations of the WebGPU graphics API

The WebGPU graphics API provides useful graphics features. But it also has some limitations you need to be aware of:

- Features with no support in WebGPU
- Limited browser support
- Compute shader limitations
- GPU readback
- Texture format limitations
- Render texture channels
- Terrain texture limits
- Fonts
- Global illumination
- Video
- Shader variants

## Features with no support in WebGPU

Although WebGPU unlocks useful graphics features, there are a few it doesn’t support yet:

- Async compute
- Dynamic resolution
- Cubemap arrays

## Limited browser support

WebGPU is currently experimental and not supported by all browsers and devices. For more information, refer to the MDN Web docs on [Accessing a device](https://developer.mozilla.org/en-US/docs/Web/API/WebGPU_API#accessing_a_device) and [Browser compatibility](https://developer.mozilla.org/en-US/docs/Web/API/WebGPU_API#browser_compatibility). For browser support, refer to [Can I use: WebGPU](https://caniuse.com/webgpu).

## Compute shader limitations

There are a few limitations to compute **shader** in Web.

### No RWBuffer support

You can use structured buffers, `RWStructuredBuffer`, but not `RWBuffer` in compute shaders. Limited read-write storage texture formats WebGPU only supports a limited set of **texture formats** for read-write storage textures in compute shaders. HLSL doesn’t explicitly state the access type of a storage texture, so it’s based on usage.

```
RWTexture2D<float> tex; // storage texture
tex[uv] = 1.0f; // write only
tex[uv] += 1.0f; // read-write
```

Write-only storage textures are generally much better supported. Refer to Texture format limitations.

### Strict uniformity analysis

In WebGPU, you must only call barrier functions from uniform control flow. Otherwise, WebGPU fails to compile the shader. Uniform control flow ensures that all threads in a thread group follow the same execution path and reach the barrier simultaneously.

The following are HLSL barrier functions:

- `GroupMemoryBarrier`
- `GroupMemoryBarrirWithGroupSync`
- `DeviceMemoryBarrier`
- `DeviceMemoryBarrierWithGroupSync`
- `AllMemoryBarrier`
- `AllMemoryBarrierWithGroupSync`

### Async compute

WebGPU doesn’t support async compute.

### No HLSL extended features

WebGPU doesn’t provide support for the following features:

- Wave Intrinsics (WaveBasic, WaveVote, WaveBallot, WaveMath, WaveMultiPrefix)
- QuadShuffle
- Int64
- Native16Bit

## GPU readback

WebGPU doesn’t support synchronous readback of buffer or texture data from the GPU to the CPU. The following functions will not work:

- Texture2D.GetPixels
- ComputeBuffer.GetData
- ScreenCapture.CaptureScreenshot
- ScreenCapture.CaptureScreenshotAsTexture

Instead, use the `AsyncGPUReadback` API to read buffer or texture data from the GPU to the CPU. For screen captures, use `ScreenCapture.CaptureScreenshotIntoRenderTexture` along with `AsyncGPUReadback`.

## Texture format limitations

For information about WebGPU texture format capabilities, refer to the W3 documentation on [WebGPU](https://www.w3.org/TR/webgpu). Some formats are more restrictive than on other APIs, especially for storage texture usage.

For example, WebGPU doesn’t support `RGBA8` or `RHalf` as a read-write storage texture format. If you do create a RenderTexture with that format, you must set `enableRandomWrite` to `false`, which is the default value.

However, WebGPU supports `RFloat` as a storage texture format, so if you create a RenderTexture with `RFloat` format, `enableRandomWrite` doesn’t need to be `false`.

You can use SystemInfo.GetCompatibleFormat to find a format that will work for a given usage.

## Render texture channels

The output type of a fragment shader must have a greater or equal number of channels as the target **render texture** format.

If the RenderTexture is RGBA, it has 4 channels. The fragment shader must output a `float4` or `half4`. If it returns a float or half, WebGPU will encounter an error because there are channels of the render texture that will be uninitialized.

If a RenderTexture is R8, it has 1 channel. The fragment shader can then output a float or half. The fragment shader can also return a float4 or half4, and the extra output channels will be ignored.

## Terrain texture limits

The number of textures you can access from a shader is limited to 16 on many platforms. This limit can hit by the **terrain** renderer, especially with layer textures. This can make terrain rendering problematic for WebGPU. It is recommended that you limit the number of terrain texture layers you use.

## Recommendations for how to use fonts in Web

Unity Web supports dynamic font rendering similar to other Unity platforms. However, Unity Web doesn’t have access to the fonts installed on the user’s machine, so if you want to use any fonts, include them in the project folder (including any fallback fonts for international characters, or bold/italic versions of fonts), and set as fallback font names.

## Restrictions on global illumination in Web

Unity Web only supports Baked Global Illumination. Realtime Global Illumination isn’t currently supported in Web. Also, Unity Web supports non-directional **lightmaps** only.

## Recommendations on how to use video in Web

You can’t use `VideoClipImporter` to import video clips to your Unity project because it might increase the initial asset data download size and prevent network streaming. To use video playback in Web:

1. Use the `URL` option in the VideoPlayer component.
2. Place the asset in the `StreamingAssets` directory to use the built-in network streaming of your browser.

## Restrictions on shader variants in Web

Due to limited available memory in Web, don’t include unwanted shader variants because it can lead to unnecessary memory usage. Therefore, it’s recommended to familiarize yourself with shader variants and shader stripping. Also, take extra care to ensure that you don’t add shaders with too many variants (for example, Unity’s Standard Shader) to the Always-included Shaders section in Graphics Settings.

## Additional resources

- WebGPU (Experimental)
- Introduction to the WebGPU graphics API
- Enable the WebGPU graphics API
- WebGL2
