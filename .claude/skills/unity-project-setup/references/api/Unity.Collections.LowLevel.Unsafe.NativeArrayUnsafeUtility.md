<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.NativeArrayUnsafeUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Contains [unsafe](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/unsafe) methods for working with NativeArray instances.

This class contains methods that you can use to perform unsafe operations that ignore the job safety system. For example, if you are implementing your own custom native container, you might want to call `NativeArray` methods that cause the safety system to produce errors, even though you're implementing these methods safely. `NativeArrayUnsafeUtility` allows you to perform these operations without triggering errors in the safety system.

### Static Methods

| Method | Description |
| --- | --- |
| ConvertExistingDataToNativeArray | Converts a buffer to a NativeArray. |
| GetAtomicSafetyHandle | Gets the AtomicSafetyHandle that is used for safety control on a NativeArray. |
| GetUnsafeBufferPointerWithoutChecks | Gets the pointer to the data owner of a NativeArray, without performing checks. |
| GetUnsafePtr | Gets the pointer to the memory buffer owner of a NativeArray, and checks whether there is write access to the NativeArray. If there is no write access to the NativeArray, an InvalidOperationException is thrown. |
| GetUnsafeReadOnlyPtr | Gets a pointer to the memory buffer of a NativeArray or NativeArray.ReadOnly. |
| SetAtomicSafetyHandle | Sets a new AtomicSafetyHandle on a NativeArray. |
