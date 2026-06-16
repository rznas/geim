<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle.SetCustomErrorMessage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| staticSafetyId | The static safety ID with which the provided custom error message should be associated. This ID must have been allocated with NewStaticSafetyId. Passing 0 is invalid because 0 is the default static safety ID, and its error messages cann't be modified. |
| errorType | The class of error that should use the provided custom error message instead of the default job debugger error message. |
| messageBytes | The error message to use for the specified error type. This should be a UTF8-encoded byte array, and doesn't have to be null-terminated. |
| byteCount | The number of bytes in the `messageBytes` array, excluding the optional null terminator. |

### Description

Provides a custom error message for a specific job debugger error type, in cases where additional context can be provided.

The job debugger uses the specified static safety ID and error type to look up error messages for AtomicSafetyHandle instances. You should provide a message for each applicable type of error defined in AtomicSafetyErrorType. Without a specific error message, the job debugger only gives general error messages that might not clearly identify the source of the error.

If the message contains any of the following sequences, they are replaced with the corresponding context-specific data (if available) when the message is emitted:

- {2} = this job name. example: "BoidsJob"
- {3} = this job field. example: "BoidsJob.boidsBuffer"
- {5} = this owner type. example: "NativeArray<int>"
