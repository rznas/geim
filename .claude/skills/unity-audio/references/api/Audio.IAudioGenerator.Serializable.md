<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Audio.IAudioGenerator.Serializable.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A helper struct that allows you to object select and serialize a reference to any UnityEngine.Object, MonoBehaviour or ScriptableObject that implements IAudioGenerator.

Interface references are not directly serializable in user scripts if they are implemented on a UnityEngine.Object, even if using SerializeReference. This helper struct additionally provides a PropertyDrawer giving a UI with an object field properly scoped to IAudioGenerator objects.

### Properties

| Property | Description |
| --- | --- |
| definition | Get and Set the serialized object as a IAudioGenerator. |

### Constructors

| Constructor | Description |
| --- | --- |
| IAudioGenerator.Serializable | Construct this serializable struct with an initial IAudioGenerator value. |

### Public Methods

| Method | Description |
| --- | --- |
| Get | A type-safe helper method that retrieves the internal value. |
| Set | A type-safe helper method that sets the internal value. |
