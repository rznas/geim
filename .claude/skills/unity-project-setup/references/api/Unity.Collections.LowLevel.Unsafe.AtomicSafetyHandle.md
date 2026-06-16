<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Coordinate safe access to native container memory inside the job system.

`AtomicSafetyHandle` holds a reference to the central information that the safety system stores for a given native container. When a job contains a `NativeContainer` instance, the job system automatically configures the flags in `AtomicSafetyHandle` to reflect the way that the native container can be used in that job. Each job has a separate `AtomicSafetyHandle` instance for a given native container. 

Use this class when you implement a custom `NativeContainer` type. Every `NativeContainer` instance must contain an `AtomicSafetyHandle` field named `m_Safety`. For a conceptual overview of AtomicSafetyHandle and the role it plays in the job system, refer to Implement a custom native container.

### Static Methods

| Method | Description |
| --- | --- |
| CheckDeallocateAndThrow | Check if an AtomicSafetyHandle can be deallocated. |
| CheckExistsAndThrow | Check if an AtomicSafetyHandle is valid. |
| CheckGetSecondaryDataPointerAndThrow | Check whether it's safe to create a memory-aliasing view to a native container. |
| CheckReadAndThrow | Check whether the referenced native container can be read from. |
| CheckWriteAndBumpSecondaryVersion | Check whether the referenced native container can be written to and increment the secondary version number if so. |
| CheckWriteAndThrow | Check whether the referenced native container can be written to. |
| Create | Creates a new AtomicSafetyHandle. |
| EnforceAllBufferJobsHaveCompleted | Waits for all jobs running against the AtomicSafetyHandle to complete. |
| EnforceAllBufferJobsHaveCompletedAndDisableReadWrite | Waits for all jobs running against an AtomicSafetyHandle to complete and then disables the read and write access on the AtomicSafetyHandle. |
| EnforceAllBufferJobsHaveCompletedAndRelease | Waits for all jobs running against an AtomicSafetyHandle to complete and then releases the AtomicSafetyHandle. |
| GetAllowReadOrWriteAccess | Checks if the AtomicSafetyHandle is configured to allow reading or writing. |
| GetNestedContainer | Checks whether an AtomicSafetyHandle represents a nested container. |
| GetReaderArray | Fetches the job handles of all jobs that read from an AtomicSafetyHandle. |
| GetReaderName | Gets the name of a specified job that reads from an AtomicSafetyHandle. |
| GetTempMemoryHandle | Gets an AtomicSafetyHandle for the temporary memory allocations in a temporary memory scope. |
| GetTempUnsafePtrSliceHandle | Gets a single shared AtomicSafetyHandle. |
| GetWriter | Gets any writers on an AtomicSafetyHandle. |
| GetWriterName | Gets the debug name of the current writer on an AtomicSafetyHandle. |
| IsDefaultValue | Checks if an AtomicSafetyHandle has its default value. |
| IsHandleValid | Checks if an AtomicSafetyHandle is valid. |
| IsTempMemoryHandle | Checks if an AtomicSafetyHandle is the temporary memory safety handle for the active temporary memory scope. |
| IsValidNonDefaultHandle | Checks if an AtomicSafetyHandle has been initialized and is valid. |
| NewStaticSafetyId | Allocates a new static safety ID to store information for the provided type. |
| PrepareUndisposable | Marks an AtomicSafetyHandle so that it can't be disposed of. |
| Release | Releases a previously created AtomicSafetyHandle. |
| SetAllowReadOrWriteAccess | Sets the read or write access on an AtomicSafetyHandle. |
| SetAllowSecondaryVersionWriting | Sets whether other AtomicSafetyHandles that use a secondary version number can write to the NativeContainer protected by a given AtomicSafetyHandle. |
| SetBumpSecondaryVersionOnScheduleWrite | Sets whether to automatically bump the secondary version when scheduling a job that has write access to the AtomicSafetyHandle. |
| SetCustomErrorMessage | Provides a custom error message for a specific job debugger error type, in cases where additional context can be provided. |
| SetNestedContainer | Sets the nested container flag on an AtomicSafetyHandle. |
| SetStaticSafetyId | Assigns a provided static safety ID to an AtomicSafetyHandle. |
| UseSecondaryVersion | Switches the AtomicSafetyHandle to the secondary version number. |
| ValidateNonDefaultHandle | Checks that the handle has been initialized, and if so, checks that it is still valid. |
