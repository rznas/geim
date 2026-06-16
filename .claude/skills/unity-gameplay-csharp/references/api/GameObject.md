<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for all objects that can exist in a scene. Add components to a GameObject to control its appearance and behavior.

The `GameObject` is the fundamental object type in Unity. Use `GameObject` to represent everything in your project, including characters, props, and scenery. A `GameObject` acts as a container for functional components that determine how the GameObject looks and behaves.

Any script that derives from MonoBehaviour can be added to a `GameObject` as a component. Use the Component.gameObject property from your `MonoBehaviour` code to access the `GameObject` the component is attached to.

`MonoBehaviour` event functions such as the regular per-frame `MonoBehaviour.Update` allow you to make the object responsive to events. To receive these event callbacks the `GameObject` must be active in the scene, which means both the `activeSelf` and `activeInHierarchy` properties must be `true`.

You can create an empty `GameObject` from code by invoking one of the constructors. However, a more common method is to instantiate a `GameObject` in Prefab form, with preconfigured components, property values, and child objects. For more information, refer to Instantiating Prefabs at runtime in the Manual.

You can modify many of the properties of this class in the Editor using the Inspector window. For a more comprehensive guide to using the GameObject class, refer to GameObject in the Manual.

The following example creates a `GameObject` named "myExampleGO" and adds a component of type AudioSource:

```csharp
using UnityEngine;  public class Example_GameObject : MonoBehaviour
  {
      private void Start()
      {
          GameObject myExampleGO = new GameObject("myExampleGO", typeof(AudioSource));
      }
  }
```

Additional resources: Component.

### Properties

| Property | Description |
| --- | --- |
| activeInHierarchy | The active state of the GameObject in the Scene hierarchy. True if active, false if inactive. (Read Only) |
| activeSelf | The local active state of the GameObject. True if active, false if inactive. (Read Only) |
| isStatic | Whether there are any Static Editor Flags set for the GameObject. |
| layer | Integer identifying the layer the GameObject is assigned to. |
| scene | The Scene that contains the GameObject. |
| sceneCullingMask | The Scene culling mask defined for the GameObject. (Read Only) |
| tag | The tag assigned to the GameObject. |
| transform | The Transform attached to the GameObject (Read Only). |
| transformHandle | The TransformHandle of the GameObject (Read Only). |

### Constructors

| Constructor | Description |
| --- | --- |
| GameObject | Creates a new GameObject, with optional parameters to specify a name and set of components to attach. |

### Public Methods

| Method | Description |
| --- | --- |
| AddComponent | Adds a component of the specified type to the GameObject. |
| BroadcastMessage | Calls the specified method on every MonoBehaviour attached to the GameObject or any of its children. |
| CompareTag | Checks if the specified tag is attached to the GameObject. |
| GetComponent | Retrieves a reference to a component of the specified type, by providing the component type as a type parameter to the generic method. |
| GetComponentAtIndex | Retrieves a reference to a component at a specified index of the GameObject's array of components. |
| GetComponentCount | Retrieves the total number of components currently attached to the GameObject. |
| GetComponentInChildren | Retrieves a reference to a component of type T on the specified GameObject, or any child of the GameObject. |
| GetComponentIndex | Retrieves the index of the specified component in the array of components attached to the GameObject. |
| GetComponentInParent | Retrieves a reference to a component of type T on the specified GameObject, or any parent of the GameObject. |
| GetComponents | Retrieves references to all components of type T on the specified GameObject. |
| GetComponentsInChildren | Retrieves references to all components of type T on the specified GameObject, and any child of the GameObject. |
| GetComponentsInParent | Retrieves references to all components of type T on the specified GameObject, and any parent of the GameObject. |
| SendMessage | Calls the specified method on every MonoBehaviour attached to the GameObject. |
| SendMessageUpwards | Calls the specified method on every MonoBehaviour attached to the GameObject and on every ancestor of the behaviour. |
| SetActive | Activates or deactivates the GameObject locally, according to the value of the supplied parameter. |
| TryGetComponent | Retrieves the component of the specified type, if it exists. |

### Static Methods

| Method | Description |
| --- | --- |
| CreatePrimitive | Creates a GameObject of the specified PrimtiveType with a mesh renderer and appropriate collider. |
| Find | Finds and returns a GameObject with the specified name or hierarchy path. |
| FindGameObjectsWithTag | Retrieves an array of all active GameObjects tagged with the specified tag. Returns an empty array if no GameObjects have the tag. |
| FindWithTag | Retrieves the first active GameObject tagged with the specified tag. Returns null if no GameObject has the tag. |
| GetScene | Retrieves the Scene which contains the GameObject with the specified instance ID. |
| InstantiateGameObjects | Creates a specified number of instances of a GameObject identified by its instance ID and populates NativeArrays with the instance IDs of the new GameObjects and their Transform components. |
| SetGameObjectsActive | Activates or deactivates multiple GameObjects identified by instance ID. |

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

### Operators

| Operator | Description |
| --- | --- |
| bool | Does the object exist? |
| operator != | Compares if two objects refer to a different object. |
| operator == | Compares two object references to see if they refer to the same object. |
