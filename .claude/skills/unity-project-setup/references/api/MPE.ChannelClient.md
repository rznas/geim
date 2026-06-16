<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelClient.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

ChannelClient is a WebSocket client that connects to Unity's ChannelService, which is a WebSocket server.

A ChannelClient is created on a specific channel. A channel name matches the last part of a WebSocket URL. For example: 127.0.0.1:9090/<channelName>.

The EventService is a ChannelClient connected to the "events" channel.

You can create custom channels using the ChannelService, and connect to them using a ChannelClient. For information about creating channels, see ChannelService.GetOrCreateChannel.

```csharp
using System;
using System.Text;
using UnityEditor.MPE;
using UnityEditor;
using UnityEngine;public static class ChannelCommunicationDocExample
{
    [MenuItem("ChannelDoc/Step 1")]
    static void StartChannelService()
    {
        if (!ChannelService.IsRunning())
        {
            ChannelService.Start();
        }
        Debug.Log($"[Step1] ChannelService Running: {ChannelService.GetAddress()}:{ChannelService.GetPort()}");
    }    static int s_BinaryChannelId;
    static int s_StringChannelId;
    static Action s_DisconnectBinaryChannel;
    static Action s_DisconnectStringChannel;    [MenuItem("ChannelDoc/Step 2")]
    static void SetupChannelService()
    {
        if (s_DisconnectBinaryChannel == null)
        {
            s_DisconnectBinaryChannel = ChannelService.GetOrCreateChannel("custom_binary_ping_pong", HandleChannelBinaryMessage);
            s_BinaryChannelId = ChannelService.ChannelNameToId("custom_binary_ping_pong");
        }
        Debug.Log($"[Step2] Setup channel_custom_binary id: {s_BinaryChannelId}");        if (s_DisconnectStringChannel == null)
        {
            s_DisconnectStringChannel = ChannelService.GetOrCreateChannel("custom_ascii_ping_pong", HandleChannelStringMessage);
            s_StringChannelId = ChannelService.ChannelNameToId("custom_ascii_ping_pong");
        }
        Debug.Log($"[Step2] Setup channel_custom_ascii id: {s_StringChannelId}");
    }    static void HandleChannelBinaryMessage(int connectionId, byte[] data)
    {
        var msg = "";
        for (var i = 0; i < Math.Min(10, data.Length); ++i)
        {
            msg += data[i].ToString();
        }
        Debug.Log($"Channel Handling binary from connection {connectionId} - {data.Length} bytes - {msg}");        // Client has sent a message (this is a ping)
        // Lets send back the same message (as a pong)
        ChannelService.Send(connectionId, data);
    }    static void HandleChannelStringMessage(int connectionId, byte[] data)
    {
        // A new message is received.
        // Since our clients expects string data. Encode the data and send it back as a string:        var msgStr = Encoding.UTF8.GetString(data);
        Debug.Log($"Channel Handling string from connection {connectionId} - {msgStr}");        // Client has sent a message (this is a ping)
        // Lets send back the same message (as a pong)
        ChannelService.Send(connectionId, msgStr);
    }    static ChannelClient s_BinaryClient;
    static Action s_DisconnectBinaryClient;
    static ChannelClient s_StringClient;
    static Action s_DisconnectStringClient;
    [MenuItem("ChannelDoc/Step 3")]
    static void SetupChannelClient()
    {
        const bool autoTick = true;        if (s_BinaryClient == null)
        {
            s_BinaryClient = ChannelClient.GetOrCreateClient("custom_binary_ping_pong");
            s_BinaryClient.Start(autoTick);
            s_DisconnectBinaryClient = s_BinaryClient.RegisterMessageHandler(HandleClientBinaryMessage);
        }
        Debug.Log($"[Step3] Setup client for channel custom_binary_ping_pong. ClientId: {s_BinaryClient.clientId}");        if (s_StringClient == null)
        {
            s_StringClient = ChannelClient.GetOrCreateClient("custom_ascii_ping_pong");
            s_StringClient.Start(autoTick);
            s_DisconnectStringClient = s_StringClient.RegisterMessageHandler(HandleClientStringMessage);
        }
        Debug.Log($"[Step3] Setup client for channel custom_ascii_ping_pong. ClientId: {s_StringClient.clientId}");
    }    static void HandleClientBinaryMessage(byte[] data)
    {
        Debug.Log($"Receiving pong binary data: {data} for clientId: {s_BinaryClient.clientId} with channelName: {s_BinaryClient.channelName}");
    }    static void HandleClientStringMessage(string data)
    {
        Debug.Log($"Receiving pong data: {data} for clientId: {s_StringClient.clientId} with channelName: {s_StringClient.channelName}");
    }    [MenuItem("ChannelDoc/Step 4")]
    static void ClientSendMessageToServer()
    {
        Debug.Log("[Step 4]: Clients are sending data!");
        s_BinaryClient.Send(new byte[] { 0, 1, 2, 3, 4, 5, 6, 7 });
        s_StringClient.Send("Hello world!");
    }    [MenuItem("ChannelDoc/Step 5")]
    static void CloseClients()
    {
        Debug.Log("[Step 5]: Closing clients");
        s_DisconnectBinaryClient();
        s_BinaryClient.Close();        s_DisconnectStringClient();
        s_StringClient.Close();
    }    [MenuItem("ChannelDoc/Step 6")]
    static void CloseService()
    {
        Debug.Log("[Step 6]: Closing clients");        s_DisconnectBinaryChannel();
        s_DisconnectStringChannel();        ChannelService.Stop();
    }
}/*
When you execute the menu items one after the other, Unity prints the following messages to the Console window.[Step1] ChannelService Running: 127.0.0.1:64647[Step2] Setup channel_custom_binary id: -1698345965[Step2] Setup channel_custom_ascii id: -930064725[Step3] Setup client for channel custom_binary_ping_pong. ClientId: -1698345965[Step3] Setup client for channel custom_ascii_ping_pong. ClientId: -930064725[Step 4]: Clients are sending data!Channel Handling binary from connection 1 - 8 bytes - 01234567Channel Handling string from connection 2 - Hello world!Receiving pong binary data: System.Byte[] for clientId: -1698345965 with channelName: custom_binary_ping_pongReceiving pong data: Hello world! for clientId: -930064725 with channelName: custom_ascii_ping_pong[Step 5]: Closing clients[Step 6]: Closing clients*/
```

### Properties

| Property | Description |
| --- | --- |
| channelName | The name of the channel this ChannelClient is connected to. The name matches the route of the URL used to connect to Unity's ChannelService. For example, 127.0.0.1:8928/<my Channel Name>. |
| clientId | The channel ID, which essentially a hash of the channel name. See ChannelService.ChannelNameToId. |
| isAutoTick | Specifies whether Unity processes (ticks) this ChannelClient's incoming and outgoing messages automatically, or the user processes (ticks) them manually, either in the main thread or a dedicated thread. |

### Public Methods

| Method | Description |
| --- | --- |
| Close | Closes the ChannelClient. This closes the WebSocket client but not the Channel in the ChannelService. Other ChannelClients can still connect on the same Channel. |
| GetChannelClientInfo | Gets the ChannelClientInfo for a specific channel. |
| IsConnected | Checks whether the ChannelClient connected to a ChannelService. |
| NewRequestId | Creates a unique request ID for this ChannelClient in this instance of Unity. For more information about requests, see ChannelClient.Request. |
| RegisterMessageHandler | Registers a new handler on a specific channel. The new handler is called whenever a message is sent to the ChannelClient. |
| Send | Sends an ASCII or binary message to the ChannelService. Depending on how the channel's handler processes the message, it may also be sent to other connections. |
| Start | Starts an existing ChannelClient so it listens to incoming and outgoing messages. |
| Stop | Stops a specific ChannelClient from listening for new messages. This is different than ChannelClient.Close because you can restart the channel client using ChannelClient.Start. |
| Tick | Ticks the ChannelClient. When you call this method, it checks whether any incoming messages from the server need to be processed, and whether any outgoing messages need to be sent to the server. |
| UnregisterMessageHandler | Unregisters a specific channel handler from a ChannelClient. |

### Static Methods

| Method | Description |
| --- | --- |
| GetChannelClientList | Gets information for all ChannelClients running on a single instance of Unity. |
| GetOrCreateClient | Creates a new ChannelClient on a specific channel. If a client already exists, this method gets the client. |
| Shutdown | Closes all ChannelClients in this instance of Unity. |
