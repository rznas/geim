<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.BatchCullingContext-viewID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ID of the object from which the culling is invoked. Usage example: store culling-related data for each object.

```csharp
// Example of per-view data, indexed by view IDusing System;
using UnityEngine;public class CullingExample : MonoBehaviour
{
    private BatchRendererGroup batchRendererGroup;
    private Dictionary<BatchPackedCullingViewID, MyViewData> myPerViewData = new Dictionary<BatchPackedCullingViewID, MyViewData>();    void Start()
    {
        batchRendererGroup = new BatchRendererGroup(this.OnPerformCulling, IntPtr.Zero);
    }    public JobHandle OnPerformCulling(
        BatchRendererGroup rendererGroup,
        BatchCullingContext cullingContext,
        BatchCullingOutput cullingOutput,
        IntPtr userContext)
    {
        if (!myPerViewData.ContainsKey(cullingContext.viewID))
        {
            // If the data doesn't exist for the current view, create it.
            myPerViewData[cullingContext.viewID] = new MyViewData();
        }
        MyViewData currentViewData = myPerViewData[cullingContext.viewID];        // Do stuff with the current view's data.        /* You can also get the EntityId of the current view's gameObject
           (for example, Camera, Light, etc.) as follows: */
        EntityId entityId = cullingContext.viewID.GetEntityId();
    }
}
```
