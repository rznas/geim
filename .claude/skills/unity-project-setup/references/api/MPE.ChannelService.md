<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MPE.ChannelService.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The ChannelService encapsulates a WebSocket server running in Unity.

The ChannelService allows you to create new communication channels. A channel matches the route of the URL connecting to the ChannelService. For example, "127.0.0.1:9292/<channelName>"

The ChannelService allows custom handlers to receive all messages on a specific channel.

Unity does not start the ChannelService automatically. You must start it manually using ChannelService.Start. Alternatively, you can use the following command line switch: --ump-channel-service-on-startup.

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
        // Client has sent a message (this is a ping)
        // Client expects string data. Encode the data and send it back as a string:        var msgStr = Encoding.UTF8.GetString(data);
        Debug.Log($"Channel Handling string from connection {connectionId} - {msgStr}");        // Send back the same message (as a pong)
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
When you execute the menu items one after the other, Unity prints the following messages to the Console window:[Step1] ChannelService Running: 127.0.0.1:64647[Step2] Setup channel_custom_binary id: -1698345965[Step2] Setup channel_custom_ascii id: -930064725[Step3] Setup client for channel custom_binary_ping_pong. ClientId: -1698345965[Step3] Setup client for channel custom_ascii_ping_pong. ClientId: -930064725[Step 4]: Clients are sending data!Channel Handling binary from connection 1 - 8 bytes - 01234567Channel Handling string from connection 2 - Hello world!Receiving pong binary data: System.Byte[] for clientId: -1698345965 with channelName: custom_binary_ping_pongReceiving pong data: Hello world! for clientId: -930064725 with channelName: custom_ascii_ping_pong[Step 5]: Closing clients[Step 6]: Closing clients*/
```

### Static Methods

| Method | Description |
| --- | --- |
| Broadcast | Sends a message to all of a specific channel's ChannelClient connections. |
| BroadcastBinary | Sends a message to all of a specific channel's ChannelClient connections. |
| ChannelNameToId | Closes a specific channel and all connections to that channel. |
| CloseChannel | Closes a specific channel and all connections to that channel. |
| DispatchMessages | Dispatches any messages that have been received since the last dispatch. This happens automatically every editor tick, but this method can be used to force dispatching to occur during thread-blocking operations. |
| GetAddress | Gets the address of the ChannelService. This is always a local address. For example, 127.0.0.1. |
| GetChannelClientList | Gets a list of all channel clients connected to the ChannelService. |
| GetChannelList | Gets a list of channels open in the ChannelService. By default the ChannelService always has a "status" channel and an "events" channel. |
| GetOrCreateChannel | Gets or creates a new channel. |
| GetPort | Retrieves the port where the ChannelService runs. This port is chosen randomly when the ChannelService first starts. Alternatively you can specify the port from the command line, using the --ump-channel-service-port <portNumber> switch. |
| IsRunning | Checks whether the ChannelService is running and listening to new connections.. |
| RegisterMessageHandler | Registers a handler to process all incoming messages on a specific channel. |
| Send | Sends a message to a specific connection. The message can be binary or UTF8. |
| Start | Starts the ChannelService. After you start the ChannelService it listens to connection at the URL provided by: <ChannelService Address>:<ChannelServicePort>/<channelName>, for example, 127.0.0.1:9976/events. See ChannelService.GetAddress and ChannnelService.GetPort. |
| Stop | Stops the ChannelService from listening to connections, and closes any already established connections. |
| UnregisterMessageHandler | Unregisters a specific handler from a Channel. |
