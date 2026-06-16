<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewFlags.DisableBuilderModeToggle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This flag disables the ability to switch between text mode and builder mode.

This flag is not set by default. When it is set, the Search Picker window will not be able to switch between text mode and builder mode, no matter what mode it is already in.

```csharp
[SearchContext("t:material", "asset", SearchViewFlags.DisableBuilderModeToggle)]
public Material selectMaterial;
```
