<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.PlayableOutputExtensions.PushNotification.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| output | The output sending the notification. |
| origin | The originating playable of the notification. |
| notification | The notification to be sent. |
| context | Extra information about the state when the notification was fired. |

### Description

Queues a notification to be sent through the Playable system.

```csharp
using UnityEngine;
using UnityEngine.Playables;
class ExamplePlayableBehaviour : PlayableBehaviour
{
    private static readonly Notification s_BlendNotification = new Notification("BlendComplete");
    private float m_lastWeight = 0;    public override void PrepareFrame(Playable playable, FrameData info)
    {
        if (m_lastWeight < 1 && info.effectiveWeight == 1)
        {
            info.output.PushNotification(playable, s_BlendNotification, m_lastWeight);
        }
        m_lastWeight = info.effectiveWeight;
    }
}
```
