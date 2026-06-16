<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.CheckGetSecondaryDataPointerAndThrow.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| handle | The AtomicSafetyHandle to check. |

### Description

Check whether it's safe to create a memory-aliasing view to a native container.

Use this method when you implement native container methods that create memory-aliasing views, such as `GetEnumerator` or `AsArray`. This method checks whether it is safe to copy the data pointer to the backing memory of the native container into a new view structure that uses the secondary version number.

This method checks if there are pending jobs that might affect the size of the native container and risk reallocating the container's backing memory. This method doesn't throw an exception if the job writes through an `AtomicSafetyHandle` that uses a secondary version number. 

The difference between this method and `AtomicSafetyHandle.CheckReadAndThrow` is that that `CheckReadAndThrow` throws an exception if there are any pending jobs writing to the native container. `CheckGetSecondaryDataPointerAndThrow` throws an exception only if there is a risk of a job reallocating the native container's backing memory, which makes the data pointer copied to the view invalid.

For more information about secondary version numbers and safe access to dynamic containers, refer to Copying NativeContainer structures.

Additional resources: NativeContainerAttribute.
