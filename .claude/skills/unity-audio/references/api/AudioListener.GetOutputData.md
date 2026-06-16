<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioListener.GetOutputData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| samples | The array to populate with audio samples. Its length must be a power of 2. |
| channel | The channel to sample from. |

### Description

Provides a block of the listener (master)'s output data.

The array given in the samples parameter will be filled with the requested data.

`GetOutputData` provides access to audio data from a short history window (for example, the last few milliseconds) for analysis purposes. Unity doesn't automatically allocate the buffers required to store this history because doing so would be expensive and memory-intensive. Instead, Unity only allocates buffers and starts to record when you first call this function, on a per-object basis. As a result, the output data will initially be empty until the engine processes sufficient audio to populate the buffer. Please note this function isn't suited for critical or chronological, real-time data analysis or processing, or scenarios where you require low latency.

Additional resources: AudioListener.GetSpectrumData, AudioSource.GetSpectrumData, AudioSource.GetOutputData.

### Description

*Deprecated Version*. Returns a block of the listener (master)'s output data.

This variation of the function allocates a new array each time it is called. Use the Non-alloc version instead for better performance.
