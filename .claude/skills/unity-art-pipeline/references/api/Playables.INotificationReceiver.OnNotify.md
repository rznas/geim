<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Playables.INotificationReceiver.OnNotify.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| origin | The playable that sent the notification. |
| notification | The received notification. |
| context | User defined data that depends on the type of notification. Uses this to pass necessary information that can change with each invocation. |

### Description

The method called when a notification is raised.

PlayableOutputExtensions.PushNotification contains an example on how to send a notification.

```csharp
using UnityEngine;
using UnityEngine.Playables;
class NotificationLogger : MonoBehaviour, INotificationReceiver
{
    public void OnNotify(Playable origin, INotification notification, object context)
    {
        Debug.Log(notification.id);
    }
}
```
