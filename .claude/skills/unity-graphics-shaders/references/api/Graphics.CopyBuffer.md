<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Graphics.CopyBuffer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| source | The source buffer. |
| dest | The destination buffer. |

### Description

Copies the contents of one GraphicsBuffer into another.

The GPU copies the buffer contents efficiently.

Total buffer sizes (i.e. GraphicsBuffer.count multiplied by GraphicsBuffer.stride) must match between source and destination buffers. The source buffer must have a GraphicsBuffer.Target.CopySource target flag, and the destination buffer must have a GraphicsBuffer.Target.CopyDestination target flag.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // create a source index buffer and set data for it
        var src = new GraphicsBuffer(
            GraphicsBuffer.Target.Index | GraphicsBuffer.Target.CopySource,
            3, 2);
        src.SetData(new ushort[]{1, 10, 100});
        // create a destination index buffer and copy source into it
        var dst = new GraphicsBuffer(
            GraphicsBuffer.Target.Index | GraphicsBuffer.Target.CopyDestination,
            3, 2);
        Graphics.CopyBuffer(src, dst);        // check the copied data
        var got = new ushort[3];
        dst.GetData(got);
        Debug.Log($"copied data: {got[0]}, {got[1]}, {got[2]}");        // release the buffers
        src.Release();
        dst.Release();
    }
}
```

Additional resources: GraphicsBuffer, CommandBuffer.CopyBuffer, Graphics.CopyTexture.
