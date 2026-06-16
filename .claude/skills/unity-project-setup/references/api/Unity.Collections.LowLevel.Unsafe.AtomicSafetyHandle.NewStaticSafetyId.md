<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.NewStaticSafetyId.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| ownerTypeNameBytes | The name of the scripting type that owns the AtomicSafetyHandle, to be embedded in error messages involving the handle. This must be a UTF8-encoded byte array, and doesn't have to be null-terminated. |
| byteCount | The number of bytes in the `ownerTypeNameBytes` array, excluding the optional null terminator. |

### Returns

**int** The newly allocated safety ID.

### Description

Allocates a new static safety ID to store information for the provided type.

After creating a new static safety ID, use SetStaticSafetyId to assign it to the applicable AtomicSafetyHandle instances.

The job debugger uses this static safety ID to look up the provided type's name, and any custom error messages created with SetCustomErrorMessage. Without this information, the job debugger can only give general error messages that might not clearly identify the source of the error.

### Returns

**int** The newly allocated safety ID.

### Description

Allocates a new static safety ID, to store information for the provided type T.

After creating a new static safety ID, use SetStaticSafetyId to assign it to the applicable AtomicSafetyHandle instances.

The job debugger uses this static safety ID to look up the provided type's name, and any custom error messages created with SetCustomErrorMessage. Without this information, the job debugger can only give general error messages that might not clearly identify the source of the error.

This variant uses the name of the provided type `T` as the handle's owner type name.
