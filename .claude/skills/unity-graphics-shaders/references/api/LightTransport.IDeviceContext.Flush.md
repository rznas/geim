<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.IDeviceContext.Flush.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** True if the flush operation was successful.

### Description

Initiates execution of all enqueued operations on the device.

Forces the device to begin processing all previously enqueued operations such as buffer reads, writes, and compute operations. Some implementations may flush automatically, while others require explicit flushing.

This method returns immediately after submitting the operations to the device. Non-blocking operations that produce an event can be followed by a call to IDeviceContext.Wait, to perform a blocking wait while the event completes. Use IDeviceContext.IsCompleted to determine if an event produced by an asynchronous operation has completed.

**Performance Note:** Call Flush once after enqueuing multiple operations rather than after each individual operation for better performance.

```csharp
// Enqueue multiple operations
context.WriteBuffer(slice1, data1, event1);
context.WriteBuffer(slice2, data2, event2);
context.ReadBuffer(slice3, data3, event3);// Submit all operations for execution
bool flushSuccess = context.Flush();
Assert.IsTrue(flushSuccess);// Wait for all operations to complete
context.Wait(event1);
context.Wait(event2);
context.Wait(event3);
```
