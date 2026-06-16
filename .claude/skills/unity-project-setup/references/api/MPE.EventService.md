<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.EventService.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The EventService is a singleton implementation of a ChannelClient that runs on all instances of Unity. It is connected to the "events" channel and allows a Unity instance to send JSON messages to other EventServices in external process, or other instances of Unity.

The EventService can send fire-and-forget messages (see EventService.Emit), or request information or from a single client (see EventService.Request).

```csharp
using UnityEditor;
using UnityEngine;
using UnityEditor.MPE;
using System;public static class EventServiceDocExample
{
    static Action s_CustomLogEventDisconnect;
    static Action s_PingPongEventDisconnect;    [MenuItem("EventServiceDoc/Step 0")]
    static void StartChannelService()
    {
        if (!ChannelService.IsRunning())
        {
            ChannelService.Start();
        }
        Debug.Log($"[Step 0] ChannelService Running: {ChannelService.GetAddress()}:{ChannelService.GetPort()}");
    }    [MenuItem("EventServiceDoc/Step 1")]
    static void SetupEventServiceHandlers()
    {
        Debug.Log("[Step 1] Setup handlers");
        s_CustomLogEventDisconnect = EventService.RegisterEventHandler("custom_log", (eventType, args) => {
            Debug.Log($"Log a {eventType} {args[0]}");
        });        s_PingPongEventDisconnect = EventService.RegisterEventHandler("pingpong", (eventType, args) =>
        {
            Debug.Log($"Receive a {eventType} {args[0]}");
            return "pong!";
        });
    }    [MenuItem("EventServiceDoc/Step 2")]
    static void EmitMessage()
    {
        Debug.Log("[Step 2] Emitting a custom log");
        EventService.Emit("custom_log", "Hello world!", -1, EventDataSerialization.JsonUtility);
    }    [MenuItem("EventServiceDoc/Step 3")]
    static void SendRequest()
    {
        Debug.Log("[Step 3] Sending a request");
        EventService.Request("pingpong", (err, data) =>
        {
            Debug.Log($"Request fulfilled: {data[0]}");
        },
            "ping", -1, EventDataSerialization.JsonUtility);
    }    [MenuItem("EventServiceDoc/Step 4")]
    static void CloseHandlers()
    {
        Debug.Log("[Step 4] Closing all Event handlers");
        s_CustomLogEventDisconnect();
        s_PingPongEventDisconnect();
    }
}/*When you execute the five menu items one after the other, Unity prints the following messages to the Console window:[Step 0] ChannelService Running: 127.0.0.1:65000[Step 1] Setup handlers[Step 2] Emitting a custom logLog a custom_log Hello world![Step 3] Sending a requestReceive a pingpong pingRequest fulfilled: pong![Step 4] Closing all Event handlers*/
```

### Static Properties

| Property | Description |
| --- | --- |
| isConnected | The EventService connected to the ChannelService's "events" channel. |

### Static Methods

| Method | Description |
| --- | --- |
| CancelRequest | Checks whether there is a pending request for a specific event and, if there is, cancels it. See EventService.Request for more details on Request. |
| Clear | Clear all pending Requests. |
| Close | Closes the EventService, terminates connections to the ChannelService, and ensures that no more handlers are processed. |
| Emit | Sends a fire-and-forget message to all ChannelClients connected to the "events" route. |
| IsRequestPending | Checks whether a request is pending on a specific event. For more information about Request, see EventService.Request. |
| Log | Sends a log message to the ChannelService. Log messages are printed to the Console window. |
| RegisterEventHandler | Registers a handler for a specific event type. The handler is called whenever a message of the specified type is sent. Messages are sent using EventService.Emit or EventService.Request. |
| Request | Sends a request to all connected clients on the "events" channel. |
| Start | Starts the EventService so it listens to new messages. |
| Tick | Ticks the EventService. This processes all incoming and outgoing messages. By default, the EventService is ticked on each EditorApplication.update. |
| UnregisterEventHandler | Unregisters a handler from a specific event. |
