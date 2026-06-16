<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.CreateEvent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**EventID** Unique identifier for the newly created event.

### Description

Creates a synchronization event for tracking asynchronous operations.

Events provide a mechanism to track the completion status of asynchronous operations such as ReadBuffer and WriteBuffer. Each event can be used only once. After being passed to a read or write operation, it cannot be reused.

Use Wait to block until an event completes, or IsCompleted to check completion status without blocking.

**Important:** Events are single-use and must be destroyed with DestroyEvent after use to prevent resource leaks.

```csharp
// Create an event to track a write operation
var writeEvent = context.CreateEvent();
context.WriteBuffer(bufferSlice, inputData, writeEvent);// Check if the operation completed
if (context.IsCompleted(writeEvent))
{
    Console.WriteLine("Write operation completed");
    context.DestroyEvent(writeEvent);
}
```
