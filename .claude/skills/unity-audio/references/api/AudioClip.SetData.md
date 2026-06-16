<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip.SetData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| data | Linear buffer of samples to write to the audio clip buffer. |
| offsetSamples | Offset from the start of the audio clip at which to begin writing sample data. `offsetSamples` doesn't take audio channels into account, and instead uses frames. Don't multiply the audio channel count into the index. |

### Returns

**bool** Returns whether all samples were successfully written to the audio clip. This can return `false` if `offsetSamples` isn't a valid offset within the existing AudioClip, or if the data is empty.

### Description

Fills an audio clip with sample data from an array or Span. Overwrites existing data if necessary.

This is useful if you want to use procedural audio and change audio data during runtime. Only use samples with float values ranging from -1.0f to 1.0f. Don't exceed these limits because it can cause artifacts and undefined behavior.

The length of the ReadOnlySpan or float array determines the sample count. 

Use the `offsetSamples` parameter to write into a certain position in the clip. If the length from the offset is longer than the clip length, the write will wrap around and write the remaining samples from the start of the clip.

For compressed audio files, you can only set the sample data if you set **Load Type** to **Decompress on Load** in the Audio Clip importer.

For the best performance, use the Span version because you don't need to allocate managed memory. 

**Note:** The buffer provided contains a float value per sample and per channel. If your audio clip is stereo, the buffer contains interleaved float values for left channel, right channel, etc.

```csharp
using UnityEngine;
using Unity.Collections;public class Example : MonoBehaviour
{
    // Read all the samples from the clip and halve the gain
    void Start()
    {
        AudioSource audioSource = GetComponent<AudioSource>();
        var numSamples = audioSource.clip.samples * audioSource.clip.channels;
        var samples = new NativeArray<float>(numSamples, Allocator.Temp);
        audioSource.clip.GetData(samples, 0);        for (int i = 0; i < samples.Length; ++i)
        {
            samples[i] = samples[i] * 0.5f;
        }        audioSource.clip.SetData(samples, 0);
    }
}
```
