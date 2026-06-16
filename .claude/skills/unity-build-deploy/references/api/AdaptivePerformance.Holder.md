<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AdaptivePerformance.Holder.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Global access to the default Adaptive Performance interface and lifecycle management controls.

The `Holder` class provides a singleton pattern for accessing Adaptive Performance functionality. Use this class to manually control the Adaptive Performance lifecycle. You can also use it to access the main interface when **Initialize Adaptive Performance on Startup** is disabled in the Adaptive Performance settings.

 The Holder.Instance property becomes available after successful initialization and remains available until deinitialization completes.

 

The following example shows how to manually initialize Adaptive Performance and access thermal status.

```csharp
using UnityEngine;
 using UnityEngine.AdaptivePerformance; public class AdaptivePerformanceExample : MonoBehaviour
 {
     void Start()
     {
         // Initialize Adaptive Performance manually if Adaptive Performance isn't already initialized.
         if (Holder.Instance == null)
         {
             Holder.Initialize();
         }
         
         // Access thermal status after initialization.
         IAdaptivePerformance adaptivePerformance = Holder.Instance;
         if (adaptivePerformance != null && adaptivePerformance.Initialized)
         {
             IThermalStatus thermalStatus = adaptivePerformance.ThermalStatus;
             // The TemperatureLevel is located inside the ThermalMetrics struct.
             float currentTemperature = thermalStatus.ThermalMetrics.TemperatureLevel;
             Debug.Log($"Temperature level: {currentTemperature}");
         }
     }
 }
```

### Static Properties

| Property | Description |
| --- | --- |
| Instance | The default Adaptive Performance interface instance for accessing all Adaptive Performance functionality. |

### Static Methods

| Method | Description |
| --- | --- |
| Deinitialize | Stops Adaptive Performance and cleans up all associated resources and objects. |
| Initialize | Initializes Adaptive Performance and makes the instance available for use. |

### Events

| Event | Description |
| --- | --- |
| LifecycleEventHandler | Occurs when the Adaptive Performance instance is created or destroyed during lifecycle changes. |
