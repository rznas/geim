<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Networking.PlayerConnection.IConnectionState.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The state of an Editor-to-Player or Editor-to-Editor connection to be used in PlayerConnectionGUI.ConnectionTargetSelectionDropdown or PlayerConnectionGUILayout.ConnectionTargetSelectionDropdown.

The interface inherits from IDisposable and all instances of it need to be disposed of before the reference to them is lost, for example by closing the window or during an assembly reload. You can get an instance from Networking.PlayerConnection.PlayerConnectionGUIUtility.GetAttachToPlayerState. For usage and code examples see: PlayerConnectionGUI.ConnectionTargetSelectionDropdown or PlayerConnectionGUILayout.ConnectionTargetSelectionDropdown

### Properties

| Property | Description |
| --- | --- |
| connectedToTarget | Supplies the type of the established connection, as in whether the target is a Player or an Editor. |
| connectionName | The name of the connected target. |
