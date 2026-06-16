<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.CustomSampler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Custom CPU Profiler label used for profiling arbitrary code blocks.

Use CustomSampler to measure execution time of script code blocks. Produced information is displayed in the CPU Profiler and can be captured with Recorder.
 Using CustomSampler is more efficient than using Profiler.BeginSample to profile your code. This is because CustomSamplers that have been created in advance have very low Begin call overhead compared to Profiler.BeginSample.

```csharp
using UnityEngine;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    CustomSampler sampler;
    void Start()
    {
        sampler = CustomSampler.Create("MyCustomSampler");
    }    void Update()
    {
        sampler.Begin();
        // do something that takes a lot of time
        sampler.End();
    }
}
```

CustomSampler.Begin is conditionally compiled away using ConditionalAttribute. Thus it will have zero overhead, when it is deployed in non-Development Build.

Additional resources: Sampler, CustomSampler.Create, CustomSampler.Begin.

### Public Methods

| Method | Description |
| --- | --- |
| Begin | Begin profiling a piece of code with a custom label defined by this instance of CustomSampler. |
| End | End profiling a piece of code with a custom label. |

### Static Methods

| Method | Description |
| --- | --- |
| Create | Creates a new CustomSampler for profiling parts of your code. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| isValid | Returns true if Sampler is valid. (Read Only) |
| name | Sampler name. (Read Only) |

### Public Methods

| Method | Description |
| --- | --- |
| GetRecorder | Returns Recorder associated with the Sampler. |

### Static Methods

| Method | Description |
| --- | --- |
| Get | Returns Sampler object for the specific CPU Profiler label. |
| GetNames | Returns number and names of all registered Profiler labels. |
