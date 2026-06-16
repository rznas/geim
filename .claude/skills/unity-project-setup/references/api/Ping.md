<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Ping.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Ping any given IP address (given in dot notation).

The ping operation is asynchronous and a ping object can be polled for status using Ping.isDone. When a response is received it is in Ping.time.

**Windows Store Apps**: A stream socket is used to mimic ping functionality, it will try to open a connection to specified IP address using port 80. For this to work correctly, InternetClient capability must be enabled in Package.appxmanifest.

**Android**: ICMP sockets are used for ping operation if they're available, otherwise Unity spawns a child process **/system/bin/ping** for ping operations. To check if ICMP sockets are available, you need to read the contents for **/proc/sys/net/ipv4/ping**_**group**_**range**. If ICMP sockets are available, this file should contain an entry for **0 2147483647**.

### Properties

| Property | Description |
| --- | --- |
| ip | The IP target of the ping. |
| isDone | Has the ping function completed? |
| time | This property contains the ping time result in milliseconds after isDone returns true. |

### Constructors

| Constructor | Description |
| --- | --- |
| Ping | Perform a ping to the supplied target IP address. |
