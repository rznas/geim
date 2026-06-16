<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTimingManager.CaptureFrameTimings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This function triggers the FrameTimingManager to capture a snapshot of FrameTiming's data, that can then be accessed by the user.

The FrameTimingManager tries to capture as many frames as the platform allows but will only capture complete timings from finished and valid frames so the number of frames it captures may vary. This will also capture platform specific extended frame timing data if the platform supports more in depth data specifically available to it.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
	FrameTiming[] m_FrameTimings = new FrameTiming[10];	void Update()
	{
		// Instruct FrameTimingManager to collect and cache information
		FrameTimingManager.CaptureFrameTimings();		// Read cached information about N last frames (10 in this example)
		// The returned value tells how many frames are actually returned
		var ret = FrameTimingManager.GetLatestTimings((uint)m_FrameTimings.Length, m_FrameTimings);
		if (ret > 0)
		{
			// Your code logic here
		}
	}
}
```
