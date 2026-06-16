<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/job-system-copy-nativecontainer.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Copying NativeContainer structures

Native containers are value types, which means that when they’re assigned to a variable, Unity copies the `NativeContainer` structure, which contains pointers to where the native container’s data is stored, including its `AtomicSafetyHandle`. It doesn’t copy the entire contents of the `NativeContainer`.

This scenario means that there might be multiple copies of a `NativeContainer` structure which all reference the same region of memory, and all contain `AtomicSafetyHandle` objects which reference the same central record.

The above diagram shows three different copies of a `NativeArray` structure that all represent the same actual container. Each copy points to the same stored data, and the same safety data as the original `NativeArray`. However, each copy of the `NativeArray` has different flags that indicate what a job is allowed to do with that copy. The pointer to the safety data, combined with the flags, make up the `AtomicSafetyHandle`.

## Version numbers

If a `NativeContainer` is disposed of, all the copies of the `NativeContainer` structure must recognize that the original `NativeContainer` is invalid. Disposing of the original `NativeContainer` means that the block of memory that used to hold the data for the `NativeContainer` has been deallocated. In this situation, the pointer to the data which is stored in each copy of the `NativeContainer` is invalid, and might cause access violations if you use it.

The `AtomicSafetyHandle` also points at a central record which becomes invalid for the `NativeContainer` instances. However, the safety system never deallocates the memory for the central record, so it avoids the risk of access violations.

Instead, each record contains a version number. A copy of the version number is stored inside each `AtomicSafetyHandle` that references that record. When a NativeContainer is disposed of, Unity calls `Release()`, which increments the version number on the central record. After this, the record can be reused for other `NativeContainer` instances.

Each remaining `AtomicSafetyHandle`compares its stored version number against the version number in the central record to test whether the `NativeContainer` has been disposed of. Unity performs this test automatically as part of calls to methods such as `CheckReadAndThrow`, and `CheckWriteAndThrow`.

## Static views of dynamic native containers

A dynamic native container is one which has a variable size that you can continue to add elements to, such as `NativeList<T>` (which is available in the Collections package). This is in contrast to a static native container like `NativeArray<T>`, which has a fixed size that you can’t change.

When you use a dynamic native container, you can also directly access its data through another interface, called a view. A view allows you to alias a `NativeContainer` object’s data without copying or taking ownership of the data. Examples of views include enumerator objects, which you can use to access the data in a native container element-by-element, and methods such as `NativeList<T>.AsArray`, which you can use to treat a `NativeList` as if it were a `NativeArray`.

Views aren’t typically thread safe if the size of the dynamic native container changes. This is because when the size of the native container changes, Unity relocates where the data is stored in memory, which causes any pointers that a view stores to become invalid.

### Secondary version numbers

To support situations when the size of the dynamic native container changes, the safety system includes a secondary version number in an `AtomicSafetyHandle`. This mechanism is similar to the versioning mechanism, but uses a second version number stored in the central record which can be incremented independently of the first version number.

To use a secondary version number, you can use `UseSecondaryVersion` to configure the views into the data stored in a `NativeContainer`. For operations that change the size of the native container, or otherwise make existing views invalid, use `CheckWriteAndBumpSecondaryVersion` instead of `CheckWriteAndThrow`. You also need to set `SetBumpSecondaryVersionOnScheduleWrite` on the `NativeContainer` to automatically invalidate views whenever a job is scheduled that writes to the native container.

When you create a view and copy the `AtomicSafetyHandle` to it, use `CheckGetSecondaryDataPointerAndThrow` to confirm that it’s safe to copy the pointer to the native container’s memory into the view.

## Special handles

There are two special handles, which you can use when working with temporary native containers:

- `GetTempMemoryHandle`: Returns an `AtomicSafetyHandle` which you can use in native containers which are allocated with `Allocator.Temp`. Unity automatically invalidates this handle when the current temporary memory scope exits, so you don’t need to release it yourself. To test whether a particular `AtomicSafetyHandle` is the handle returned by `GetTempMemoryHandle`, use `IsTempMemoryHandle`.
- `GetTempUnsafePtrSliceHandle`: Returns a global handle you can use for temporary native containers which are backed by unsafe memory. For example, a `NativeSlice` constructed from stack memory. You can’t pass containers that use this handle into jobs.

## Additional resources

- Implement a custom NativeContainer
- Custom NativeContainer example
