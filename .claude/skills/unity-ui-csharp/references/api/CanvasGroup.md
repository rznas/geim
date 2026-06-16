<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/CanvasGroup.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A Canvas placable element that can be used to modify children Alpha, Raycasting, Enabled state.

A canvas group can be used to modify the state of children elements.

An example of this would be a window which fades in over time, by modifying the alpha value of the group the children elements will be affected. The result alpha will be the multiplied result of any nested groups, multiplied with the canvas elements alpha.

You can configure Canvas Groups to not block raycasts. When you configure a Canvas Group to not block raycasts, graphic raycasting ignores anything in the group.

Let's say you have a Canvas GameObject with a CanvasGroup component on it, and you set the CanvasGroup component's alpha to 0. In that case, the Canvas does not render any of its child GameObjects. Now suppose that the Canvas also has a child CanvasGroup GameObject that you do want to render. If you enable IgnoreParentGroups for the CanvasGroup GameObject, the parent Canvas does not render any of its child GameObjects, including the CanvasGroup you want to render. To get the child CanvasGroup GameObject, do one of two things: In the parent Canvas, set the CanvasGroup component's alpha to a small, non-zero value. Add a Canvas component to the child CanvasGroup GameObject that you want to render.

### Properties

| Property | Description |
| --- | --- |
| alpha | Set the alpha of the group. |
| blocksRaycasts | Does this group block raycasting (allow collision). |
| ignoreParentGroups | Should the group ignore parent groups? |
| interactable | Is the group interactable (are the elements beneath the group enabled). |

### Public Methods

| Method | Description |
| --- | --- |
| IsRaycastLocationValid | Returns true if the Group allows raycasts. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| enabled | Enabled Behaviours are Updated, disabled Behaviours are not. |
| isActiveAndEnabled | Checks whether a component is enabled, attached to a GameObject that is active in the hierarchy, and the component's OnEnable has been called. |
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
