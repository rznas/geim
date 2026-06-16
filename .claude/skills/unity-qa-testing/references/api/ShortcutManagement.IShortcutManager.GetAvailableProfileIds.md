<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ShortcutManagement.IShortcutManager.GetAvailableProfileIds.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**IEnumerable<string>** Enumerable of available profile IDs.

### Description

Returns an enumeration of all of avaliable profile IDs.

Profiles loaded from disk or created using CreateProfile are available unless deleted with DeleteProfile. Note that the returned enumeration always includes the default profile ID ShortcutManager.defaultProfileId.
