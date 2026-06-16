<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchContextAttribute-flags.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Search view flags used to open the Object Picker in various states.

The following example will open the Object Picker window using the compact list view and include packages results.

```csharp
[SearchContext("", "adb", SearchViewFlags.Packages | SearchViewFlags.CompactView)]
public MonoScript myPackageScript;
```
