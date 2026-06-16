<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.ReferenceContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ReferenceContext implements the IDeviceContext interface.

The implementation favors correctness and simplicity over performance. It runs on CPU without multithreading, asynchronous execution or any other optimizations. The class is meant for debugging and is not intended for production use.

### Constructors

| Constructor | Description |
| --- | --- |
| ReferenceContext | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateBuffer | Create a new buffer for a number of elements with a given stride. |
| CreateEvent | Creates a new event. |
| DestroyBuffer | Destroy the buffer with the given ID. |
| DestroyEvent | Destroy the event with the given ID. You should call this to free temporary resources associated with an event. Attempting to use the event after it has been destroyed, for example using IDeviceContext.Wait or IDeviceContext.IsCompleted will result in undefined behavior. |
| Dispose | Dispose. |
| Flush | Flush the device context. |
| GetNativeArray | Get the NativeArray used for storing buffers in the context. |
| Initialize | Initialize the device context. |
| IsCompleted | Returns true if the asynchronous operation completed. |
| ReadBuffer | Read contents of a buffer from the context. |
| Wait | Wait for an asynchronous event. |
| WriteBuffer | Write data into the memory buffer allocated by the context. |
