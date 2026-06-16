<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorSettings.NamingScheme.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Which naming scheme to use for duplicated GameObjects.

When a GameObject is duplicated or instantiated, Unity copies the original GameObject's name and appends it with successive numbers. Unity supports several naming schemes, with the default being EditorSettings.NamingScheme.SpaceParenthesis. For example, when a GameObject named "Prefab" its duplicated or instantiated, Unity names it "Prefab (1)", and then "Prefab (2)" if it is duplicated or instantiated again.

Additional resources: EditorSettings.gameObjectNamingScheme, EditorSettings.gameObjectNamingDigits.

### Properties

| Property | Description |
| --- | --- |
| SpaceParenthesis | Adds a space and a number in parenthesis to the name of an instantiated or duplicated GameObject ("Prefab (1)"). |
| Dot | Adds a dot followed by a number to the name of an instantiated or duplicated GameObject ("Prefab.1"). |
| Underscore | Adds an underscore and a number to the name of an instantiated or duplicated GameObject ("Prefab_1"). |
