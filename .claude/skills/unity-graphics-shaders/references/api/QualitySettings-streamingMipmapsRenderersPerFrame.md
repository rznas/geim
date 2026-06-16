<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-streamingMipmapsRenderersPerFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The number of renderer instances that are processed each frame when calculating which texture mipmap levels should be streamed.

If the number of renderers exceeds this limit, the mipmap levels of the textures associated with those additional renderers are calculated in subsequent frames.

 Lower this value to reduce the CPU cost of calculating the optimal mipmap levels. The tradeoff is that a lower value also reduces the rate of texture mipmap computation and the loading of those desired mipmaps.

By default, the initial value is 512, but this can be set in the Quality section of the Editor **Project Settings** window, under **Textures** > **Mipmap Streaming**.

Note: Do not change `streamingMipmapsRenderersPerFrame` too frequently at runtime. You should allow enough time between changes for all the renderers to be processed. Updating this value more frequently will lead to unused mips remaining loaded. The following example illustrates how to calculate the number of frames to delay between changes:

```csharp
using System.Collections;
using UnityEngine;
public class Example : MonoBehaviour
{
    int nextUpdateAllowed = 0;
    int _renderersPerFrame;    // Increase this value when frame rate is high, lower when frame rate drops)
    public int RenderersPerFrame
    {
        get { return QualitySettings.streamingMipmapsRenderersPerFrame; }
        set
        {
            _renderersPerFrame = value;
            StopCoroutine("UpdateRenderCount");
            StartCoroutine("UpdateRenderCount");
        }
    }    IEnumerator UpdateRenderCount()
    {
        while (Time.frameCount < nextUpdateAllowed)
            yield return null;        QualitySettings.streamingMipmapsRenderersPerFrame = _renderersPerFrame;
        int frameDelay = (int)(Texture.streamingRendererCount + (ulong)(_renderersPerFrame - 1)) / _renderersPerFrame;
        nextUpdateAllowed = Time.frameCount + frameDelay;        yield return null;
    }
}
```

Additional resources: Texture.streamingRendererCount.
