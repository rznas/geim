<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.UnityWebRequest.Result.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines codes describing the possible outcomes of a UnityWebRequest.

### Properties

| Property | Description |
| --- | --- |
| InProgress | The request hasn't finished yet. |
| Success | The request succeeded. |
| ConnectionError | Failed to communicate with the server. For example, the request couldn't connect or it could not establish a secure channel. |
| ProtocolError | The server returned an error response. The request succeeded in communicating with the server, but received an error as defined by the connection protocol. |
| DataProcessingError | Error processing data. The request succeeded in communicating with the server, but encountered an error when processing the received data. For example, the data was corrupted or not in the correct format. |
