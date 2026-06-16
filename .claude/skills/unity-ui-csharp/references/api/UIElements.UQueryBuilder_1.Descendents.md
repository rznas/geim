<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UQueryBuilder_1.Descendents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Selects all elements, recursively, that are descendants of currently matching ancestors.

```csharp
// Get all children, recursively, of root that are buttons and have classes "health-button" or "unity-button".
 var buttons = root.Query().Descendents<Button>(classNames: new[] { "health-button", "unity-button" });
```

### Description

Selects all elements, recursively, that are descendants of currently matching ancestors.

```csharp
// Get all children, recursively, of root that are buttons and have class "health-button".
 var buttons = root.Query().Descendents<Button>(classname: "health-button");
```
