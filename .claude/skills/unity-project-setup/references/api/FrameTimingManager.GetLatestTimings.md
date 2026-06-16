<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/FrameTimingManager.GetLatestTimings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| numFrames | User supplies a desired number of frames they would like FrameTimings for. This should be equal to or less than the maximum FrameTimings the platform can capture. |
| timings | An array of FrameTiming structs that is passed in by the user and will be filled with data as requested. It is the users job to make sure the array that is passed is large enough to hold the requested number of FrameTimings. |

### Returns

**uint** Returns the number of FrameTimings it actually was able to get. This will always be equal to or less than the requested numFrames depending on availability of captured FrameTimings.

### Description

Allows the user to access the currently captured FrameTimings.

Fills in a user supplied array with the requested number of FrameTimings, assuming there are enough available from the last call to CaptureFrameTimings. The array is filled in from the start with most recent completed frames FrameTimings and works backwards. So element 0 of the returned array will contain the data for the last fully finished frame. Depending on platform, the maximum frames that will ever be captured will vary and it can never return more than its maximum.

```csharp
using Unity.Profiling;
using UnityEngine;public class ExampleScript : MonoBehaviour
{
	FrameTiming[] m_FrameTimings = new FrameTiming[10];	void Update()
	{
		// Instruct FrameTimingManager to collect and cache information
		FrameTimingManager.CaptureFrameTimings();		// Read cached information about N last frames (10 in this example)
		// The returned value tells how many frames are actually returned.
 		// Element 0 of the returned array contains the data for the last fully finished frame.
		var ret = FrameTimingManager.GetLatestTimings((uint)m_FrameTimings.Length, m_FrameTimings);
		if (ret > 0)
		{
			// Your code logic here
		}
	}
}
```
