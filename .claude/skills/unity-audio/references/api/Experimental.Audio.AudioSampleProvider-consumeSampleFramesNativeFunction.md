<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Experimental.Audio.AudioSampleProvider-consumeSampleFramesNativeFunction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Pointer to the native function that provides access to audio sample frames.

This function pointer can be passed to native plug-ins that need to consume sample frames while avoiding any overhead related to going from native to C# or garbage collection interference.

Importing a native function that uses this type, for passing the native function pointer to the native plugin, would look like this:

```csharp
SetConsumeSampleFramesFunction(
    AudioSampleProvider.consumeSampleFramesNativeFunction, signalProvider.id,
    signalProvider.channelCount, signalProvider.sampleRate);
```

See ConsumeSampleFramesNativeFunction for how to import a native function that uses this signature.
