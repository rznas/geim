<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LightTransport.RadeonRaysContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

RadeonRaysContext implements the IDeviceContext interface. It uses the RadeonRays SDK for ray-triangle intersection testing and the OpenCL 1.2 API for computations.

### Constructors

| Constructor | Description |
| --- | --- |
| RadeonRaysContext | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| CreateBuffer | Create a new buffer for a number of elements with a given stride. |
| CreateEvent | Creates a new event. |
| DestroyBuffer | Destroy the buffer with the given ID. |
| DestroyEvent | Destroy the event with the given ID. You should call this to free temporary resources associated with an event. Attempting to use the event after it has been destroyed, for example using IDeviceContext.Wait or IDeviceContext.IsCompleted will result in undefined behavior. |
| Dispose | Dispose. |
| Flush | Flush the device context. |
| Initialize | Initialize the device context. |
| IsCompleted | Returns true if the asynchronous operation completed. |
| ReadBuffer | Read contents of a buffer from the context. |
| Wait | Wait for an asynchronous event. |
| WriteBuffer | Write data into the memory buffer allocated by the context. |
