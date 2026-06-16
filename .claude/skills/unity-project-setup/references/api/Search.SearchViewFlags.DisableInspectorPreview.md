<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewFlags.DisableInspectorPreview.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

This flag disables the use of the Inspector Preview in the Search Picker window.

This flag is not set by default. When it is set, the Search Picker window will not show any panel or button related to the Inspector Preview. The flag OpenInspectorPreview will not work when DisableInspectorPreview is set.

```csharp
[SearchContext("t:material", "asset", SearchViewFlags.DisableInspectorPreview)]
public Material selectMaterial;
```
