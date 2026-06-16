<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.EventDispatcherGate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gates control when the dispatcher processes events.

Here is an example of using a gate: 

 When the gate is instantiated, it closes automatically, causing the dispatcher to store the events it receives in a queue. At the end of the `using` block, Dispose is called, which triggers opening the gate. When all gates on a dispatcher open, the events stored in the queue are processed. Closing a gate while the event queue is processed does not stop it from being processed. Instead, a new queue is created to store new events. 

Here is an example of using a gate:

```csharp
public class MyElement : VisualElement
 {
     void Foo()
     {
         using (new EventDispatcherGate(dispatcher))
         {
             // do something that sends events
         }
     }
 }
```

### Constructors

| Constructor | Description |
| --- | --- |
| EventDispatcherGate | Constructor. |

### Public Methods

| Method | Description |
| --- | --- |
| Dispose | Implementation of IDisposable.Dispose. Opens the gate. If all gates are open, events in the queue are processed. |
