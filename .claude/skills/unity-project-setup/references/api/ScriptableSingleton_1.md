<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableSingleton_1.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Generic class for storing Editor state.

The ScriptableSingleton generic class allows you to create 'Manager' type classes in the Unity Editor. In classes that derive from ScriptableSingleton, serializable data you add survives assembly reloading in the Editor. Also, if the class uses the FilePathAttribute, the serializable data persists between sessions of Unity.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;[FilePath("SomeSubFolder/StateFile.foo", FilePathAttribute.Location.PreferencesFolder)]
public class MySingleton : ScriptableSingleton<MySingleton>
{
    [SerializeField]
    float m_Number = 42;    [SerializeField]
    List<string> m_Strings = new List<string>();    public void Modify()
    {
        m_Number *= 2;
        m_Strings.Add("Foo" + m_Number);        Save(true);
        Debug.Log("Saved to: " + GetFilePath());
    }    public void Log()
    {
        Debug.Log("MySingleton state: " + JsonUtility.ToJson(this, true));
    }
}
static class MySingletonMenuItems
{
    [MenuItem("SingletonTest/Log")]
    static void LogMySingletonState()
    {
        MySingleton.instance.Log();
    }    [MenuItem("SingletonTest/Modify")]
    static void ModifyMySingletonState()
    {
        MySingleton.instance.Modify();
    }
}
```

### Static Properties

| Property | Description |
| --- | --- |
| instance | Gets the instance of the Singleton. Unity creates the Singleton instance when this property is accessed for the first time. If you use the FilePathAttribute, then Unity loads the data on the first access as well. |

### Protected Methods

| Method | Description |
| --- | --- |
| Save | Saves the current state of the ScriptableSingleton. |

### Static Methods

| Method | Description |
| --- | --- |
| GetFilePath | Get the file path where this ScriptableSingleton is saved to. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| GetEntityId | Gets the EntityId of the object. |
| ToString | Returns the name of the object. |

### Static Methods

| Method | Description |
| --- | --- |
| Destroy | Removes a GameObject, component, or asset. |
| DestroyImmediate | Destroys the specified object immediately. Use with caution and in Edit mode only. |
| DontDestroyOnLoad | Do not destroy the target Object when loading a new Scene. |
| FindAnyObjectByType | Retrieves any active loaded object of Type type. |
| FindObjectsByType | Retrieves a list of all loaded objects of Type type. |
| Instantiate | Clones the object original and returns the clone. |
| InstantiateAsync | Captures a snapshot of the original object (that must be related to some GameObject) and returns the AsyncInstantiateOperation. |
| CreateInstance | Creates an instance of a scriptable object. |

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |
