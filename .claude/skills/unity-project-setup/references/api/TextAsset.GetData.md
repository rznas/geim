<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextAsset.GetData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**NativeArray<T>** A reference to an array in native code that provides access to the raw asset data.

### Description

Gets raw text asset data.

It works similarly to the bytes property, but TextAsset.GetData doesn't allocate any memory; the `NativeArray` the function returns points directly to the asset data buffer.

Because this array doesn't represent a new allocation, you don't need to call `Dispose` on it and the TextAsset.GetData function is the fastest way to access raw asset bytes as a result.

If the text asset is modified or destroyed, the array becomes invalid since it now points to invalid memory.

If the asset data size (see dataSize) isn't a multiple of the size of the `T` struct, Unity throws an exception.

Additional resources: bytes, text, dataSize, Text Assets.
