<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/VFX.VisualEffectAsset.GetEvents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| names | The List that this function populates with the event system names. |

### Description

Gets the name of every Event connected to a system.

To increase the speed of the retrieval process, preallocate the `names` input list.

Additional resources: VisualEffect.SendEvent.

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

[ExecuteInEditMode]
class LogEventNames : MonoBehaviour
{
	// Called when the script or GameObject is enabled
    void OnEnable()
    {
        VisualEffect vfx = GetComponent<VisualEffect>();
        if (vfx != null && vfx.visualEffectAsset != null)
        {
            VisualEffectAsset vfxAsset = vfx.visualEffectAsset;
            var eventNames = new List<string>();

            // Retrieve all events from the VisualEffectAsset and store them in the list
            vfxAsset.GetEvents(eventNames);
            if (eventNames.Count == 0)
            {
                Debug.Log($"There are no events listed for asset: {vfxAsset}");
            }

            foreach (var eventName in eventNames)
            {
                Debug.Log($"Event: {eventName}");
            }
        }
        else
        {
            Debug.Log("Unable to retrieve VisualEffect component or VisualEffectAsset is null.");
        }
    }
}
```

This example logs all available events in the attached `VisualEffectAsset`.
