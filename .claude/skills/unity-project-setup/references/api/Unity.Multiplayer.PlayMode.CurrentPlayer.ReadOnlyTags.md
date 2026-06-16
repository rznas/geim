<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Multiplayer.PlayMode.CurrentPlayer.ReadOnlyTags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string[]** Returns the array of assigned tags

### Description

Returns the tag(s) assigned to the currently running player.

```csharp
void Update()
 {
     if (CurrentPlayer.ReadOnlyTags().Contains("YellowTeam")) {
         ...
     }
 }
```
