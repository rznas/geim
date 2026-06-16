<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GraphicsBuffer.Target.CopyDestination.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

GraphicsBuffer can be used as a destination for CopyBuffer.

The destination buffer for Graphics.CopyBuffer or CommandBuffer.CopyBuffer must have `CopyDestination` target set. This target is most often combined with other target flags.

```csharp
using UnityEngine;public class ExampleScript : MonoBehaviour
{
    void Start()
    {
        // create a source index buffer and set data for it
        var src = new GraphicsBuffer(
            GraphicsBuffer.Target.Index | GraphicsBuffer.Target.CopySource,
            3, 2);
        src.SetData(new ushort[] {1, 10, 100});
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

Additional resources: Graphics.CopyBuffer, CommandBuffer.CopyBuffer, GraphicsBuffer.Target.CopySource.
