<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextMesh.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The TextMesh component allows you to display text in 3D text mesh component.

This component dynamically generates a mesh that fits the text specified as input, it is great to make world space UI like displaying names above characters like the example below.

Note that Text Mesh Pro is now the preferred solution for creating 3D text as it's more feature complete compared to TextMesh.

Additional resources: text mesh component.

```csharp
using UnityEngine;public class CharacterNameTag : MonoBehaviour
{
    public string characterName = "Player";
    public Vector3 nameOffset = new Vector3(0, 2, 0);    GameObject nameTag;    void Start()
    {
        // Create a new GameObject for the name tag as a children
        nameTag = new GameObject("NameTag");
        nameTag.transform.SetParent(transform);        // Add a TextMesh component
        var textMesh = nameTag.AddComponent<TextMesh>();        // Set text properties and make sure it stays centered.
        textMesh.text = characterName;
        textMesh.fontSize = 32;
        textMesh.characterSize = 0.1f;
        textMesh.anchor = TextAnchor.LowerCenter;
        textMesh.alignment = TextAlignment.Center;
    }    void Update()
    {
        // Make sure the name tag follows the offset
        nameTag.transform.position = transform.position + nameOffset;        // Make sure that the name tag is always facing the main camera
        if (Camera.main != null)
            nameTag.transform.rotation = Quaternion.LookRotation(nameTag.transform.position - Camera.main.transform.position);
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| alignment | How lines of text are aligned (Left, Right, Center). |
| anchor | Which point of the text shares the position of the Transform. |
| characterSize | The size of each character (This scales the whole text). |
| color | The color used to render the text. |
| font | The Font used. |
| fontSize | The font size to use (for dynamic fonts). |
| fontStyle | The font style to use (for dynamic fonts). |
| lineSpacing | How much space will be in-between lines of text. |
| offsetZ | How far should the text be offset from the transform.position.z when drawing. |
| richText | Enable HTML-style tags for Text Formatting Markup. |
| tabSize | How much space will be inserted for a tab '\t' character. This is a multiplum of the 'spacebar' character offset. |
| text | The specified input text to display. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| BroadcastMessage | Calls the method named methodName on every MonoBehaviour in this game object or any of its children. |
| CompareTag | Checks the GameObject's tag against the defined tag. |
| GetComponent | Gets a reference to a component of type T on the same GameObject as the component specified. |
| GetComponentInChildren | Gets a reference to a component of type T on the same GameObject as the component specified, or any child of the GameObject. |
| GetComponentIndex | Gets the index of the component on its parent GameObject. |
| GetComponentInParent | Gets a reference to a component of type T on the same GameObject as the component specified, or any parent of the GameObject. |
| GetComponents | Gets references to all components of type T on the same GameObject as the component specified. |
| GetComponentsInChildren | Gets references to all components of type T on the same GameObject as the component specified, and any child of the GameObject. |
| GetComponentsInParent | Gets references to all components of type T on the same GameObject as the component specified, and any parent of the GameObject. |
| SendMessage | Calls the method named methodName on every MonoBehaviour in this game object. |
| SendMessageUpwards | Calls the method named methodName on every MonoBehaviour in this game object and on every ancestor of the behaviour. |
| TryGetComponent | Gets the component of the specified type, if it exists. |
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

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
