<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.ITextSelection.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface to access a TextElement selection and cursor information This interface is not meant to be implemented explicitly as its declaration might change in the future.

### Properties

| Property | Description |
| --- | --- |
| cursorIndex | This is the cursor index in the text presented. |
| cursorPosition | The position of the text cursor inside the element's VisualElement.contentRect. |
| doubleClickSelectsWord | Controls whether double-clicking selects the word under the mouse pointer. |
| isSelectable | Returns true if the field is selectable. |
| selectAllOnFocus | Controls whether the element's content is selected upon receiving focus. |
| selectAllOnMouseUp | Controls whether the element's content is selected when you mouse up for the first time. |
| selectIndex | This is the selection index in the text presented. |
| tripleClickSelectsLine | Controls whether triple-clicking selects the entire line under the mouse pointer. |

### Public Methods

| Method | Description |
| --- | --- |
| GetCursorPositionFromStringIndex | The position inside the element's content box where the text cursor would be if it were at the selected index. |
| HasSelection | Return true is the TextElement has a selection. |
| MoveBackward | Moves the cursor backward by one character. |
| MoveForward | Moves the cursor forward by one character. |
| MoveToEndOfPreviousWord | Moves the cursor to the end of the previous word. |
| MoveToParagraphEnd | Moves the cursor to the end of the current paragraph. |
| MoveToParagraphStart | Moves the cursor to the start of the current paragraph. |
| MoveToStartOfNextWord | Moves the cursor to the start of the next word. |
| MoveWordBackward | Moves one word backward. |
| MoveWordForward | Moves one word forward. |
| SelectAll | Selects all the text contained in the field. |
| SelectNone | Remove selection |
| SelectRange | Select text between cursorIndex and selectIndex. |

### Events

| Event | Description |
| --- | --- |
| OnCursorIndexChange | Event that is triggered when the cursor index changes. |
| OnSelectIndexChange | Event that is triggered when the selection index changes. |
