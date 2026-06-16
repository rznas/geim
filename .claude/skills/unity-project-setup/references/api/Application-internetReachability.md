<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Application-internetReachability.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the type of internet reachability currently possible on the device.

This property is mostly useful on handhelds to distinguish fast and cheap WiFi connection from carrier networking.

**Note**: Do not use this property to determine the actual connectivity. For example, the device can be connected to a hot spot, but not have the actual route to the network. 

Non-handhelds are considered to be always capable of NetworkReachability.ReachableViaLocalAreaNetwork.
