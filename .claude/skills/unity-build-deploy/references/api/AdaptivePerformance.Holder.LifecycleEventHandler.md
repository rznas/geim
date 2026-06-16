<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Holder.LifecycleEventHandler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Occurs when the Adaptive Performance instance is created or destroyed during lifecycle changes.

This event fires automatically when the Holder.Instance property value changes. A LifecycleChangeType.Created event fires when a new IAdaptivePerformance instance is assigned, and a LifecycleChangeType.Destroyed event fires when the instance is set to null.

 Subscribe to this event to track when Adaptive Performance becomes available or unavailable. Doing so is useful for managing dependent systems or UI state that relies on Adaptive Performance.

 The event fires from the Holder.Instance property setter, so it occurs during Holder.Initialize and Holder.Deinitialize operations.

```csharp
using UnityEngine;
 using UnityEngine.AdaptivePerformance;
 
 public class AdaptivePerformanceTracker : MonoBehaviour
 {
     void Start()
     {
         // Subscribe to lifecycle events.
         Holder.LifecycleEventHandler += OnAdaptivePerformanceLifecycle;
     }
 
     void OnDestroy()
     {
         // Unsubscribe to prevent memory leaks.
         Holder.LifecycleEventHandler -= OnAdaptivePerformanceLifecycle;
     }
 
     void OnAdaptivePerformanceLifecycle(IAdaptivePerformance instance, LifecycleChangeType changeType)
     {
         switch (changeType)
         {
             case LifecycleChangeType.Created:
                 Debug.Log("Adaptive Performance is now available.");
                 break;
             case LifecycleChangeType.Destroyed:
                 Debug.Log("Adaptive Performance is no longer available.");
                 break;
         }
     }
 }
```
