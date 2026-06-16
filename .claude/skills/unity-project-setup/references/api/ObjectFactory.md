<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ObjectFactory.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Use the DefaultObject to create a new UnityEngine.Object in the editor.

The creation process handles Undo registration and applies default values from your project.

### Static Methods

| Method | Description |
| --- | --- |
| AddComponent | Creates a new component and adds it to the specified GameObject. |
| CreateGameObject | Creates a new GameObject. |
| CreateInstance | Create a new instance of the given type. |
| CreatePrimitive | Creates a GameObject primitive with Undo support. The created primitive will have any existing Preset applied to it, see Preset Manager. |
| PlaceGameObject | Place the given GameObject in the Scene View using the same preferences as built-in Unity GameObjects. |

### Events

| Event | Description |
| --- | --- |
| componentWasAdded | This is invoked every time a new Component or MonoBehaviour is added to a GameObject using the ObjectFactory. |
