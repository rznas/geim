<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider.ConsumeSampleFramesNativeFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| providerId | Id of the provider. See AudioSampleProvider.id. |
| interleavedSampleFrames | Pointer to the sample frames buffer to fill. The actual C type is float*. |
| sampleFrameCount | Number of sample frames that can be written into interleavedSampleFrames. |

### Description

Type that represents the native function pointer for consuming sample frames.

Importing a hypothetical native setup function would be done this way:

```csharp
[DllImport(pluginName, ExactSpelling = true, CallingConvention = CallingConvention.Cdecl)]
private static extern void SetConsumeSampleFramesFunction(
    AudioSampleProvider.ConsumeSampleFramesNativeFunction cb, uint id, ushort channelCount, uint sampleRate);
```

See AudioSampleProvider.consumeSampleFramesNativeFunction for how to invoke this native plug-in function.
