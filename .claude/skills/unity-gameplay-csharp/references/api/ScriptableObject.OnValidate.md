<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.OnValidate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector.

`OnValidate` is usually used to perform an action after a value changes in the Inspector. For example, making sure that data stays within a certain range.

The following operations aren't supported and can cause errors in your application when performed from `OnValidate`:

- Modifying values on another script.
- Calling ScriptableSingleton.Save.
- Camera rendering operations. A safe alternative is to add a listener to EditorApplication.update and perform the rendering during the next Editor Update call.
