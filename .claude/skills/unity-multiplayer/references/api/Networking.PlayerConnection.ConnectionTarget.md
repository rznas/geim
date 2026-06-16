<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.ConnectionTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The type of the connected target.

Used in IConnectionState. For example, this is used to signify whether the Editor is connected to a Player, or to an Editor. When the Editor is connected to another Editor or itself, it also picks up the PlayMode Player. If the Editor is not connected to a Player, it always falls back onto a connection to itself. Therefore, ConnectionTarget.None is only applicable in a Player.

### Properties

| Property | Description |
| --- | --- |
| None | No target is connected, this is only possible in a Player. |
| Player | The connected target is a Player. |
| Editor | The connected target is an Editor. |
