<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.ObjectIdRequest.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ObjectId request that can be used to determine the object corresponding to each pixel. Can be submitted using either Camera.SubmitRenderRequest or RenderPipeline.SubmitRenderRequest, and the results can be used either on the CPU in C# or the GPU in a shader.

After submitting this render request, the ObjectIdRequest._result field will be filled, and each pixel in ObjectIdRequest._destination will contain a 32-bit color that can be decoded to a 32-bit integer index using ObjectIdResult.DecodeIdFromColor. This 32-bit index can then be looked up in ObjectIdResult._idToObjectMapping to determine the object corresponding to each pixel. The C# code example below demonstrates how this render request can be used to determine the object corresponding to each pixel.

Although there is no built-in functionality for decoding the object ID (the index into ObjectIdResult._idToObjectMapping) from a color on the GPU, the following HLSL shader function can be used for this purpose: `int decodeObjectIdInShader(float4 color) { return (int)(color.r * 255) + ((int)(color.g * 255) << 8) + ((int)(color.b * 255) << 16) + ((int)(color.a * 255) << 24); }`

SRP Compatibility:

- URP: Supported by falling back on the Built-In Render Pipeline implementation when called in the editor.
- HDRP: Supported by falling back on the Built-In Render Pipeline implementation when called in the editor.

This render request is not currently supported outside of the editor.

Additional resources: Camera.SubmitRenderRequest, RenderPipeline.SubmitRenderRequest, ObjectIdResult.

```csharp
using UnityEngine;
using UnityEngine;
using UnityEngine.Experimental.Rendering;
using UnityEngine.Rendering;// Snapshot containing the object at each pixel from the perspective of the camera.
// The snapshot is taken when this class is constructed.
class ObjectIdSnapshot
{
    Texture2D m_ObjectIdTexture;
    Object[] m_IdToObjectMapping;    public ObjectIdSnapshot(Camera camera)
    {
        var cameraTargetTexture = camera.targetTexture;
        var renderTexture = new RenderTexture(
            width: cameraTargetTexture.width,
            height: cameraTargetTexture.height,
            colorFormat: GraphicsFormat.R8G8B8A8_UNorm,
            depthStencilFormat: GraphicsFormat.D32_SFloat);        var objectIdRequest = new ObjectIdRequest(destination: renderTexture);
        camera.SubmitRenderRequest(objectIdRequest);
        m_ObjectIdTexture = ConvertTexture(objectIdRequest.destination);
        m_IdToObjectMapping = objectIdRequest.result.idToObjectMapping;
    }    public GameObject GetGameObjectAtPixel(int x, int y)
    {
        var color = m_ObjectIdTexture.GetPixel(x, y);
        var id = ObjectIdResult.DecodeIdFromColor(color);
        var obj = m_IdToObjectMapping[id];
        return GetParentGameObject(obj);
    }    static GameObject GetParentGameObject(Object obj)
    {
        if (obj is null)
        {
            return null;
        }
        if (obj is GameObject gameObject)
        {
            return gameObject;
        }
        if (obj is MonoBehaviour component)
        {
            return component.gameObject;
        }
        return null;
    }    static Texture2D ConvertTexture(RenderTexture renderTexture)
    {
        var previousActiveRenderTexture = RenderTexture.active;
        RenderTexture.active = renderTexture;
        var cpuTexture = new Texture2D(renderTexture.width, renderTexture.height, renderTexture.graphicsFormat, TextureCreationFlags.None);
        cpuTexture.ReadPixels(new Rect(0, 0, renderTexture.width, renderTexture.height), 0, 0);
        cpuTexture.Apply();
        RenderTexture.active = previousActiveRenderTexture;
        return cpuTexture;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| destination | RenderTexture to store the rendering result of the request. The colors in this RenderTexture can be decoded to determine the object that was rendered at each pixel, first by decoding the color to an index using ObjectIdResult.DecodeIdFromColor and then by looking this index up in ObjectIdResult._idToObjectMapping. |
| face | Target Cubemap face to store the rendering result. |
| mipLevel | Target mipLevel to store the rendering output. |
| result | A result field that is filled when the render request has been submitted and completed, containing the ObjectIdResult._idToObjectMapping that is needed to interpret the color-encoded object IDs that are rendered in the ObjectIdRequest._destination RenderTexture. |
| slice | Target slice to store the rendering output. |
