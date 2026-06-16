<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.EventID.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unique identifier for tracking asynchronous operations executing on a device context.

The EventID is used to track the completion status of asynchronous operations such as buffer reads and writes. Each EventID represents a unique operation and provides a mechanism to query completion status or wait for operation completion.

Key characteristics of EventID:

- Single-use: Each EventID can only be used for one operation.
- Non-reusable: After being passed to an operation, it cannot be reused.
- Must be destroyed: Use IDeviceContext.DestroyEvent to prevent resource leaks.
- Thread-safe: Can be queried from different threads.

EventIDs are commonly used with:

- IDeviceContext.ReadBuffer and IDeviceContext.WriteBuffer operations.
- IDeviceContext.Wait for blocking until completion.
- IDeviceContext.IsCompleted for non-blocking status checks.

```csharp
// Create events to track multiple async operations
var writeEvent = context.CreateEvent();
var readEvent = context.CreateEvent();// Start async write operation
context.WriteBuffer(bufferSlice, inputData, writeEvent);// Start async read operation (depends on write completing)
context.ReadBuffer(bufferSlice, outputData, readEvent);// Submit all operations for execution
context.Flush();// Wait for write to complete before proceeding
bool writeSuccess = context.Wait(writeEvent);
Assert.IsTrue(writeSuccess);// Check if read completed without blocking
if (context.IsCompleted(readEvent))
{
    Debug.Log("Read operation completed");
}
else
{
    // Wait for read to complete
    bool readSuccess = context.Wait(readEvent);
    Assert.IsTrue(readSuccess);
}// Clean up events.
context.DestroyEvent(writeEvent);
context.DestroyEvent(readEvent);
```

### Properties

| Property | Description |
| --- | --- |
| Value | The underlying event identifier value. |

### Constructors

| Constructor | Description |
| --- | --- |
| EventID | Construct a new EventID object. |
