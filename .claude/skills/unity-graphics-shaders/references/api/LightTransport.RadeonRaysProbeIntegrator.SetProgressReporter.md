<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysProbeIntegrator.SetProgressReporter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| progress | BakeProgressState tracker to set on the probe integrator. |

### Description

Set progress tracker.

Set a BakeProgressState on the integrator. The integrator will report progress by updating the reporter while the integration is in progress.

```csharp
var integrator = new RadeonRaysProbeIntegrator();
var progress = new BakeProgressState();
integrator.SetProgressReporter(progress);
```

How to set a progress tracker on a probe integrator.
