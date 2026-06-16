<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.IConnectionState-connectedToTarget.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Supplies the type of the established connection, as in whether the target is a Player or an Editor.

ConnectionTarget.None could only be true from within a Player, because the Editor will always fall back to a connection to itself if no other target is connected.
