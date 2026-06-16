<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.OnDisable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function is called when the scriptable object goes out of scope.

`OnDisable` is called in the following scenarios:

- On loading a scene in the Hierarchy window, for any ScriptableObject that is currently loaded in memory but is not referenced in that scene.
- On invocation of Resources.UnloadUnusedAssets for any ScriptableObject that was previously deselected in the Project window.
- On domain reload, for all ScriptableObjects loaded in memory. Subsequently `OnEnable` is called for these objects when they are recreated.

`OnDisable` cannot be a coroutine.

```csharp
using UnityEngine;
using System;public class EventManager
{
    public static Action OnSomethingHappened;    public static void TriggerEvent()
    {
        OnSomethingHappened?.Invoke();
    }
}// ScriptableObject that listens to an event and unsubscribes when disabled
[CreateAssetMenu(menuName = "Example/Event Listener SO")]
public class EventListenerSO : ScriptableObject
{
    void OnEnable()
    {
        Debug.Log("ScriptableObject enabled. Subscribing to event.");
        EventManager.OnSomethingHappened += HandleEvent;
    }    void OnDisable()
    {
        Debug.Log("ScriptableObject disabled. Unsubscribing from event.");
        EventManager.OnSomethingHappened -= HandleEvent;
    }    void HandleEvent()
    {
        Debug.Log("Event received by ScriptableObject!");
    }
}
```
