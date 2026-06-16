<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Holder.Deinitialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops Adaptive Performance and cleans up all associated resources and objects.

Use this method to perform a complete shutdown of the Adaptive Performance system. This method first stops any running Adaptive Performance operations by calling IAdaptivePerformance.DeinitializeAdaptivePerformance. It then cleans up the provider infrastructure and sets Holder.Instance to null.

 After this method completes successfully, all Adaptive Performance functionality is unavailable until Initialize is called again.

 It's safe to call this method even if Adaptive Performance isn't currently initialized.

```csharp
using UnityEngine;
 using UnityEngine.AdaptivePerformance; public class AdaptivePerformanceManager : MonoBehaviour
 {
     void OnApplicationPause(bool pauseStatus)
     {
         if (pauseStatus)
         {
             // Adaptive Performance state before deinitialization.
             Debug.Log($"Adaptive Performance initialized: {Holder.Instance.Initialized}");             // Clean up Adaptive Performance when app is paused.
             Holder.Deinitialize();
             Debug.Log("Adaptive Performance deinitialized");             // Adaptive Performance state after deinitialization.
             Debug.Log($"Adaptive Performance initialized: {Holder.Instance!=null && Holder.Instance.Initialized}");
         }
     }
 }
```
