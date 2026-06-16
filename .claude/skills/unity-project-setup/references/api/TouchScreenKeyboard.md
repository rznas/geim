<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TouchScreenKeyboard.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Interface for on-screen keyboards. Only native iPhone, Android, and Windows Store Apps are supported.

This interface allows to display different types of the keyboard: ASCII, Numbers, URL, Email, and others.

Because the appearance of the keyboard has the potential to obscure portions of your user interface, it is up to you to make sure that parts of your user interface are not obscured when the keyboard is being displayed.

`TouchScreenKeyboard.visible` and `TouchScreenKeyboard.area` should be used to determine if the keyboard is being shown (activated) and what portion of the screen is using.

**Universal Windows Platform**: On Universal Windows Apps the touch screen keyboard is supported when physical keyboard is not connected.

**Note**: Attempting to access any properties of this class on an unsupported platform throws an exception. If you're targeting multiple platforms, make sure your code checks TouchScreenKeyboard.isSupported before attempting to use it.

### Static Properties

| Property | Description |
| --- | --- |
| area | Indicates the portion of the screen that is currently covered by the on-screen keyboard. |
| hideInput | Will text input field above the keyboard be hidden when the keyboard is on screen? |
| inputFieldAppearance | Returns the current visibility status of the on-screen keyboard's input field. (Read Only) |
| isInPlaceEditingAllowed | Checks if the text within an input field can be selected and modified while TouchScreenKeyboard is open. |
| isSupported | Checks if on-screen keyboards are supported. |
| visible | Returns true whenever any keyboard is visible on the screen. |

### Properties

| Property | Description |
| --- | --- |
| active | Is the keyboard visible or sliding into the position on the screen? |
| canGetSelection | Specifies whether the TouchScreenKeyboard supports the selection property. (Read Only) |
| canSetSelection | Specifies whether the TouchScreenKeyboard supports the selection property. (Read Only) |
| characterLimit | How many characters the keyboard input field is limited to. 0 = infinite. |
| selection | Gets or sets the character range of the selected text within the string currently being edited. |
| status | Returns the status of the on-screen keyboard. (Read Only) |
| targetDisplay | Specified on which display the on-screen keyboard will appear. |
| text | Returns the text displayed by the input field of the keyboard. |
| type | Returns the TouchScreenKeyboardType of the keyboard. |

### Static Methods

| Method | Description |
| --- | --- |
| Open | Opens the native keyboard provided by OS on the screen. |
