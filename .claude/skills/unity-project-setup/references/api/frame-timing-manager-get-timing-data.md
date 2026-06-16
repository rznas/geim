<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/frame-timing-manager-get-timing-data.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Get frame timing data

You can get frame timing data from the `FrameTiming` API in the following ways:

- Use a custom Profiler module
- Use the `FrameTiming` API

To get frame timing data from release builds, you must first enable the Frame Timing Stats property.

## Use a custom Profiler module

To view frame timing data in a custom Profiler module perform the following steps:

1. Create a custom profiler module according to the instructions on Creating a custom profiler module.
2. Open the **Profiler** window (**Window** > **Analysis** > **Profiler**)
3. Open the **Profiler Module Editor** (**Profler Modules** dropdown > gear icon) and select your custom Profiler module.
4. In the **Available Counters** panel, select **Unity**.
5. Select **Render** to open the submenu that contains **Profiler counters** related to memory usage, which includes those that the `FrameTimingStats` property enables. You can then click on the relevant counters in the submenu to add them to your custom module.

For a list of available counters, refer to Profiler counters reference.

The Highlights Profiler module uses `FrameTiming` to determine whether a frame is CPU or GPU bound.

## Use the FrameTiming API

Use the `FrameTiming` API to access timestamp information. In each variable, `FrameTimingManager` records the time a specific event happens during a frame.

The following table contains the values available through the API, in the order that Unity executes them during a frame:

| **Property** | **Description** |
| --- | --- |
| `frameStartTimestamp` | The CPU timestamp time when the frame begins. |
| `firstSubmitTimestamp` | The CPU timestamp time when Unity submits the first job to the GPU during this frame. |
| `cpuTimePresentCalled` | The CPU timestamp time when Unity calls the Present() function for the current frame. |
| `cpuTimeFrameComplete` | The CPU timestamp time when the GPU finishes rendering the frame and interrupts the CPU. |

Use `FrameTimingManager.GetCpuTimerFrequency` API to convert the timestamp to seconds.

## Additional resources

- Enable frame timing statistics for release builds
- Frame timing API counter reference
