<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GUI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The GUI class is the interface for Unity's GUI with manual positioning.

Additional resources: GUI tutorial.

### Static Properties

| Property | Description |
| --- | --- |
| backgroundColor | Global tinting color for all background elements rendered by the GUI. |
| changed | Returns true if any controls changed the value of the input data. |
| color | Applies a global tint to the GUI. The tint affects backgrounds and text colors. |
| contentColor | Tinting color for all text rendered by the GUI. |
| depth | The sorting depth of the currently executing GUI behaviour. |
| enabled | Is the GUI enabled? |
| matrix | The GUI transform matrix. |
| skin | The global skin to use. |
| tooltip | The tooltip of the control the mouse is currently over, or which has keyboard focus. (Read Only). |

### Static Methods

| Method | Description |
| --- | --- |
| BeginGroup | Begin a group. Must be matched with a call to EndGroup. |
| BeginScrollView | Begin a scrolling view inside your GUI. |
| Box | Create a Box on the GUI Layer. |
| BringWindowToBack | Bring a specific window to back of the floating windows. |
| BringWindowToFront | Bring a specific window to front of the floating windows. |
| Button | Make a single press button. The user clicks them and something happens immediately. |
| DragWindow | Make a window draggable. |
| DrawTexture | Draw a texture within a rectangle. |
| DrawTextureWithTexCoords | Draw a texture within a rectangle with the given texture coordinates. |
| EndGroup | End a group. |
| EndScrollView | Ends a scrollview started with a call to BeginScrollView. |
| FocusControl | Move keyboard focus to a named control. |
| FocusWindow | Make a window become the active window. |
| GetNameOfFocusedControl | Get the name of named control that has focus. |
| HorizontalScrollbar | Make a horizontal scrollbar. Scrollbars are what you use to scroll through a document. Most likely, you want to use scrollViews instead. |
| HorizontalSlider | A horizontal slider the user can drag to change a value between a min and a max. |
| Label | Make a text or texture label on screen. |
| ModalWindow | Show a Modal Window. |
| PasswordField | Make a text field where the user can enter a password. |
| RepeatButton | Make a button that is active as long as the user holds it down. |
| ScrollTo | Scrolls all enclosing scrollviews so they try to make position visible. |
| SelectionGrid | Make a grid of buttons. |
| SetNextControlName | Set the name of the next control. |
| TextArea | Make a Multi-line text area where the user can edit a string. |
| TextField | Make a single-line text field where the user can edit a string. |
| Toggle | Make an on/off toggle button. |
| Toolbar | Make a toolbar. |
| UnfocusWindow | Remove focus from all windows. |
| VerticalScrollbar | Make a vertical scrollbar. Scrollbars are what you use to scroll through a document. Most likely, you want to use scrollViews instead. |
| VerticalSlider | A vertical slider the user can drag to change a value between a min and a max. |
| Window | Make a popup window. |

### Delegates

| Delegate | Description |
| --- | --- |
| WindowFunction | Callback to draw GUI within a window (used with GUI.Window). |
