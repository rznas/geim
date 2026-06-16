<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Holder.Initialize.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Initializes Adaptive Performance and makes the instance available for use.

Only use this method when **Initialize Adaptive Performance on Startup** is disabled in Adaptive Performance settings.

 This method initializes the Adaptive Performance provider infrastructure and then completes initialization on the resulting instance by calling IAdaptivePerformance.InitializeAdaptivePerformance.

 If the instance is already available, this method returns immediately without performing any operations. After successful initialization, the Holder.Instance property becomes available and you can use it to access Adaptive Performance functionality.

```csharp
using UnityEngine;
 using UnityEngine.AdaptivePerformance; public class AdaptivePerformanceManager : MonoBehaviour
 {
     void Start()
     {
         // Check if manual initialization is needed.
         if (Holder.Instance == null)
         {
             Holder.Initialize();
             // Verify initialization succeeded.
             if (Holder.Instance != null && Holder.Instance.Initialized)
             {
                 Debug.Log("Adaptive Performance initialized successfully.");
             }
         }
     }
 }
```
