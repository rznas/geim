<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/WebGL2.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# WebGL2

WebGL is an API for rendering graphics in web browsers, which is based on the functionality of the OpenGL ES graphics library. **WebGL** 2.0 (WebGL2) is the version of WebGL that Unity supports. WebGL2 almost matches with the OpenGL ES 3.0 functionality.

WebGL2 is widely accepted by most browsers and is the default Web graphics API in Unity.

## Recommendations for WebGL2

There are best practice recommendations and restrictions for working with WebGL2:

- Recommendation for camera clear.
- Enable anti-aliasing.
- Restrictions on Web shader code.
- Recommendations for how to use fonts in Web.
- Restrictions on global illumination in Web.
- Recommendations on how to use video in Web.
- Restrictions on shader variants in Web.

### Recommendation for camera clear

By default, Unity Web clears the drawing buffer after each frame, which means the content of the frame buffer clears regardless of the Camera.clearFlags setting. However, you can change this behavior at instantiation time. To do this, set `webglContextAttributes.preserveDrawingBuffer` to `true` in the `index.html` file of your Web template.

**Note** : If you set any [WebGL context attributes](https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/getContextAttributes), you must also add a line to preserve the **Power Preference** Player setting.

```
script.onload = () => {
  config['webglContextAttributes'] = {
    preserveDrawingBuffer: true, //Add this line to preserve the Camera.clearFlags setting
    powerPreference: {{{ WEBGL_POWER_PREFERENCE }}} //Add this line to preserve the Power Preference Player setting
  };
  createUnityInstance(canvas, config, (progress) => {
```

### Enable anti-aliasing

WebGL supports anti-aliasing on most (but not on all) combinations of browsers and GPUs. Anti-aliasing softens jagged edges in your **scene**.

To enable anti-aliasing:

1. Go to the Quality Settings (menu: **Edit** > **Project Settings**, then select the **Quality** category).
2. In the **Rendering** section, make sure **Anti Aliasing** isn’t set to **Disabled**.

For more information about anti-aliasing, refer to the Anti-aliasing documentation and Quality Settings.

### Restrictions on Web shader code

The WebGL 2.0 specification imposes some limitations on OpenGL Shading Language (GLSL) **shader** code. This is mainly relevant if you write your own shaders. Precision qualifiers WebGL 2.0 requires you to specify the precision of all variables in the shader. You can use `highp`, `mediump`, or `lowp` to specify the precision of the variable. If you don’t specify the precision, the shader will use the default precision, which is `mediump`. You can also use precision to specify the precision of a block of variables.

## Recommendations for how to use fonts in Web

Unity Web supports dynamic font rendering similar to other Unity platforms. However, Unity Web doesn’t have access to the fonts installed on the user’s machine, so if you want to use any fonts, include them in the project folder (including any fallback fonts for international characters, or bold/italic versions of fonts), and set as fallback font names.

## Restrictions on global illumination in Web

Unity Web only supports Baked Global Illumination. Realtime **Global Illumination** isn’t currently supported in Web. Also, Unity Web supports non-directional **lightmaps** only.

## Recommendations on how to use video in Web

You can’t use `VideoClipImporter` to import video clips to your Unity project because it might increase the initial asset data download size and prevent network streaming. To use video playback in Web:

1. Use the `URL` option in the VideoPlayer component.
2. Place the asset in the `StreamingAssets` directory to use the built-in network streaming of your browser.

## Restrictions on shader variants in Web

Due to limited available memory in Web, don’t include unwanted shader variants because it can lead to unnecessary memory usage. Therefore, it’s recommended to familiarize yourself with shader variants and shader stripping. Also, take extra care to ensure that you don’t add shaders with too many variants (for example, Unity’s Standard Shader) to the Always-included Shaders section in Graphics Settings.

## Additional resources

- WebGPU (Experimental)
