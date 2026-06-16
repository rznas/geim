<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider.SampleFramesEventNativeFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| userData | User data specified when the handler was set. The actual C type is void*. |
| providerId | Id of the provider. See AudioSampleProvider.id. |
| sampleFrameCount | Number of sample frames available or overflowed, depending on event type. |

### Description

Type that represents the native function pointer for handling sample frame events.

Sample frames events are AudioSampleProvider.sampleFramesAvailable and AudioSampleProvider.sampleFramesOverflow.

Importing such a function from a native plug-in would be done this way:

```csharp
[DllImport(pluginName, ExactSpelling = true, CallingConvention = CallingConvention.Cdecl)]
private static extern void SampleFramesAvailable(IntPtr userData, uint id, uint sampleFrameCount);
```
