<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualTreeAsset.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An instance of this class holds a tree of `VisualElementAsset's`, created from a UXML file. Each node in the file corresponds to a `VisualElementAsset`. You can clone a `VisualTreeAsset` to create a tree of `VisualElement's`.

 **Note**: You can't generate a `VisualTreeAsset` from raw UXML at runtime.

The following example loads a VisualTreeAsset from a UXML file in a custom Editor script.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;public class VisualTreeAssetExample : EditorWindow
{
    [MenuItem("Window/VisualTreeAssetExample")]
    public static void ShowWindow()
    {
        var window = GetWindow<VisualTreeAssetExample>();
        window.titleContent = new GUIContent("VisualTreeAssetExample");
    }    public void CreateGUI()
    {
        // Load the UXML asset
        var visualTree = AssetDatabase.LoadAssetAtPath<VisualTreeAsset>("Assets/Editor/MyCustomEditor.uxml");
        if (visualTree != null)
        {
            // Clone the UXML and add it to the root VisualElement
            VisualElement root = visualTree.CloneTree();
            rootVisualElement.Add(root);
        }
        else
        {
            Debug.LogError("UXML file not found at specified path.");
        }
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| contentHash | A hash value computed from the template content. |
| importedWithErrors | Whether there were errors encountered while importing the UXML File |
| importedWithWarnings | Whether there were warnings encountered while importing the UXML File |
| stylesheets | The stylesheets used by this VisualTreeAsset. |
| templateDependencies | The UXML templates used by this VisualTreeAsset. |

### Public Methods

| Method | Description |
| --- | --- |
| CloneTree | Build a tree of VisualElements from the asset. |
| Instantiate | Build a tree of VisualElements from the asset. |

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
