<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.SearchViewFlags.TableView.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Search Picker window will open in table view.

This can be useful if you want to use a search expression to display selected (that is using a select{} statement) values in a Search table.

```csharp
[SearchContext("select{p:t:material, @label, @size}", "expression;asset", SearchViewFlags.TableView)]
public Material selectMaterialBySize;
```
