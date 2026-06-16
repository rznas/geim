<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.TextCursorPlacement.MoveLineStart.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Move the cursor to the beginning of the line of text.

```csharp
[MenuItem("Examples/ISearchView/SetSearchText_WithCursorPosition")]
public static void SetSearchText_WithCursorPosition()
{
    var view = SearchService.ShowContextual("asset");
    view.SetSearchText("t:material", TextCursorPlacement.MoveLineStart);
}
```
