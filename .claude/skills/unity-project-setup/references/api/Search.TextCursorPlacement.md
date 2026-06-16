<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Search.TextCursorPlacement.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Where to place the cursor in the text. (see ISearchView.SetSearchText).

```csharp
[MenuItem("Examples/ISearchView/SetSearchText_WithCursorPosition")]
public static void SetSearchText_WithCursorPosition()
{
    var view = SearchService.ShowContextual("asset");
    view.SetSearchText("t:material", TextCursorPlacement.MoveLineStart);
}
```

### Properties

| Property | Description |
| --- | --- |
| None | Do not move the cursor. |
| MoveLineEnd | Move the cursor to the end of the line of text. |
| MoveLineStart | Move the cursor to the beginning of the line of text. |
| MoveToEndOfPreviousWord | Move the cursor to the end of the previous word. |
| MoveToStartOfNextWord | Move the cursor to the start of the previous word. |
| MoveWordLeft | Move the cursor one word to the left. |
| MoveWordRight | Move the cursor one word to the right. |
| MoveAutoComplete | Default cursor position (end of the line of text). |
| Default | Do not move the cursor. |
