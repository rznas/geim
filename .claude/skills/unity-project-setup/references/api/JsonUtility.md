<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/JsonUtility.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Provides functions for converting between objects and JSON data.

You can use this class to generate a JSON representation of an object, or to populate an object from a JSON string. This can be useful when interacting with web services that send and receive JSON data, or when you need to convert objects into a serializable format, such as when saving game state.

The functions use the standard Unity serializer, which means they only serialize or deserialize the fields on an object, and only when the fields are of supported types. For more information about the Unity serializer, refer to Serialization rules in the Unity manual.

The following example shows use of `JsonUtility` to save and load a game's state to the PlayerPrefs.

```csharp
using UnityEngine;
using System;
using System.Collections.Generic;[Serializable]
public class GameState
{
    public int Lives;
    public int Level;
    public string CharacterName;
    public List<string> ItemsCarried;
 
    public const string PlayerPrefsKeyName = "SavedGameState";    public void SaveToPlayerPrefs()
    {
        // Convert this GameState instance to a JSON string
        string json = JsonUtility.ToJson(this);        // Save the converted JSON into the PlayerPrefs
        PlayerPrefs.SetString(PlayerPrefsKeyName, json);
        PlayerPrefs.Save();
    }    public static GameState CreateFromPlayerPrefs()
    {
        // If the game was never saved before, the key will not exist; in this case return null
        if(!PlayerPrefs.HasKey(PlayerPrefsKeyName))
            return null;        // Retrieve the saved JSON string from the player prefs
        string json = PlayerPrefs.GetString(PlayerPrefsKeyName);        // Deserialize the JSON string into a new GameState object and return it
        return JsonUtility.FromJson<GameState>(json);           
    }
}
```

The object or type you pass to the functions must be a custom C# type you have defined. It must not be a primitive type such as `bool` or `string` or a collection type such as `List<T>` or an array. If you want to serialize a collection of objects to JSON, you must create a `class` or `struct` which has the collection as a member. Similarly, if you want to deserialize a JSON string, that JSON string must always have an object at the top level, not an array.

Additional resources: EditorJsonUtility, json-serialization.

### Static Methods

| Method | Description |
| --- | --- |
| FromJson | Create an object from its JSON representation. |
| FromJsonOverwrite | Overwrite data in an object by reading from its JSON representation. |
| ToJson | Generate a JSON representation of the public fields of an object. |
