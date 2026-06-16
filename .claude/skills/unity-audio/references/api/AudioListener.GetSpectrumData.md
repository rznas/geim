<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioListener.GetSpectrumData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| samples | The array to populate with audio samples. Its length must be a power of 2. |
| channel | The channel to sample from. |
| window | The FFTWindow type to use when sampling. |

### Description

Provides a block of the listener (master)'s spectrum data.

The array given in the samples parameter will be filled with the requested data.

Number of values (the length of the samples array) must be a power of 2. (ie 128/256/512 etc). Min = 64. Max = 8192. Use window to reduce leakage between frequency bins/bands. Note, the more complex window type, the better the quality, but reduced speed.

This function will use the sampling rate specified in AudioSettings.outputSampleRate, and NOT the sampling rate specified for the audio clip.

**Note**: `GetSpectrumData` provides access to audio data from a short history window (for example, the last few milliseconds) for analysis purposes. Unity doesn't automatically allocate the buffers required to store this history because doing so would be expensive and memory-intensive. Instead, Unity only allocates buffers and starts to record when you first call this function, on a per-object basis. As a result, the output data will initially be empty until the engine processes sufficient audio to populate the buffer. Please note this function isn't suited for critical or chronological, real-time data analysis or processing, or scenarios where you require low latency.

Additional resources: AudioListener.GetOutputData, AudioSource.GetSpectrumData, AudioSource.GetOutputData.

```csharp
using UnityEngine;
[RequireComponent(typeof(AudioListener))]
public class GetSpectrumDataExample : MonoBehaviour
{
    void Update()
    {
        float[] spectrum = new float[256];        AudioListener.GetSpectrumData(spectrum, 0, FFTWindow.Rectangular);        for (int i = 1; i < spectrum.Length - 1; i++)
        {
            Debug.DrawLine(new Vector3(i - 1, spectrum[i] + 10, 0), new Vector3(i, spectrum[i + 1] + 10, 0), Color.red);
            Debug.DrawLine(new Vector3(i - 1, Mathf.Log(spectrum[i - 1]) + 10, 2), new Vector3(i, Mathf.Log(spectrum[i]) + 10, 2), Color.cyan);
            Debug.DrawLine(new Vector3(Mathf.Log(i - 1), spectrum[i - 1] - 10, 1), new Vector3(Mathf.Log(i), spectrum[i] - 10, 1), Color.green);
            Debug.DrawLine(new Vector3(Mathf.Log(i - 1), Mathf.Log(spectrum[i - 1]), 3), new Vector3(Mathf.Log(i), Mathf.Log(spectrum[i]), 3), Color.blue);
        }
    }
}
```

### Parameters

| Parameter | Description |
| --- | --- |
| numSamples | Number of values (the length of the samples array). Must be a power of 2. Min = 64. Max = 8192. |
| channel | The channel to sample from. |
| window | The FFTWindow type to use when sampling. |

### Description

*Deprecated Version*. Returns a block of the listener (master)'s spectrum data.

This variation of the function allocates a new array each time it is called. Use the Non-alloc version instead for better performance.
