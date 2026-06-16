<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.Multiplayer.PlayMode.CurrentPlayer.Tags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IReadOnlyList<string>** Returns the array of assigned tags

### Description

Returns the tag(s) assigned to the currently running player. This property is read-only and should be used to access the tags without modifying them.

```csharp
void Update()
 {
     if (CurrentPlayer.Tags.Contains("YellowTeam")) {
         ...
     }
 }
```
