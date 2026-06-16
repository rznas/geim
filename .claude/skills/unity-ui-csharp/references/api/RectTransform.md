<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/RectTransform.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Position, size, anchor and pivot information for a rectangle.

RectTransforms are used for GUI but can also be used for other things. It's used to store and manipulate the position, size, and anchoring of a rectangle and supports various forms of scaling based on a parent RectTransform.

**Note**: The Inspector changes which properties are exposed based on which anchor preset is in use. For more information see Rect Transform and Basic Layout.

### Properties

| Property | Description |
| --- | --- |
| anchoredPosition | The position of the pivot of this RectTransform relative to the anchor reference point. |
| anchoredPosition3D | The 3D position of the pivot of this RectTransform relative to the anchor reference point. |
| anchorMax | The normalized position in the parent RectTransform that the upper right corner is anchored to. |
| anchorMin | The normalized position in the parent RectTransform that the lower left corner is anchored to. |
| drivenByObject | The object that is driving the values of this RectTransform. Value is null if not driven. |
| offsetMax | The offset of the upper right corner of the rectangle relative to the upper right anchor. |
| offsetMin | The offset of the lower left corner of the rectangle relative to the lower left anchor. |
| pivot | The normalized position in this RectTransform that it rotates around. |
| rect | The calculated rectangle in the local space of the Transform. |
| sendChildDimensionsChange | Whether the RectTransform notifies components when a child RectTransform changes dimensions. |
| sizeDelta | The size of this RectTransform relative to the distances between the anchors. |

### Public Methods

| Method | Description |
| --- | --- |
| ForceUpdateRectTransforms | Force the recalculation of RectTransforms internal data. |
| GetLocalCorners | Get the corners of the calculated rectangle in the local space of its Transform. |
| GetWorldCorners | Get the corners of the calculated rectangle in world space. |
| SetInsetAndSizeFromParentEdge | Set the distance of this rectangle relative to a specified edge of the parent rectangle, while also setting its size. |
| SetSizeWithCurrentAnchors | Makes the RectTransform calculated rect be a given size on the specified axis. |

### Events

| Event | Description |
| --- | --- |
| reapplyDrivenProperties | Event that is invoked for RectTransforms that need to have their driven properties reapplied. |

### Delegates

| Delegate | Description |
| --- | --- |
| ReapplyDrivenProperties | Delegate used for the reapplyDrivenProperties event. |

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
| childCount | The number of children the parent Transform has. |
| eulerAngles | The rotation as Euler angles in degrees. |
| forward | Returns a normalized vector representing the blue axis of the transform in world space. |
| hasChanged | Has the transform changed since the last time the flag was set to 'false'? |
| hierarchyCapacity | The transform capacity of the transform's hierarchy data structure. |
| hierarchyCount | The number of transforms in the transform's hierarchy data structure. |
| localEulerAngles | The rotation as Euler angles in degrees relative to the parent transform's rotation. |
| localPosition | Position of the transform relative to the parent transform. |
| localRotation | The rotation of the transform relative to the transform rotation of the parent. |
| localScale | The scale of the transform relative to the GameObjects parent. |
| localToWorldMatrix | Matrix that transforms a point from local space into world space (Read Only). |
| lossyScale | The global scale of the object (Read Only). |
| parent | The parent of the transform. |
| position | The world space position of the Transform. |
| right | The red axis of the transform in world space. |
| root | Returns the topmost transform in the hierarchy. |
| rotation | A Quaternion that stores the rotation of the Transform in world space. |
| up | The green axis of the transform in world space. |
| worldToLocalMatrix | Matrix that transforms a point from world space into local space (Read Only). |

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
| DetachChildren | Unparents all of the target object's children. |
| Find | Finds a child by name n and returns it. |
| GetChild | Returns a transform child by index. |
| GetLocalPositionAndRotation | Updates the value of the out parameters localPosition and localRotation with the transform's current position and rotation in local space (that is, relative to its parent's transform). |
| GetPositionAndRotation | Updates the value of the out parameters position and rotation with the transform's current position and rotation in world space (that is, relative to the scene's origin coordinates). |
| GetSiblingIndex | Gets the index of this Transform, relative to its siblings. |
| InverseTransformDirection | Transforms a direction from world space to local space. The opposite of Transform.TransformDirection. |
| InverseTransformDirections | Transforms multiple directions from world space to local space overwriting each original position with the transformed version. The opposite of Transform.TransformDirections. |
| InverseTransformPoint | Transforms position from world space to local space. |
| InverseTransformPoints | Transforms multiple positions from world space to local space overwriting each original position with the transformed version. |
| InverseTransformVector | Transforms a vector from world space to local space. The opposite of Transform.TransformVector. |
| InverseTransformVectors | Transforms multiple vectors from world space to local space overwriting each original position with the transformed version. The opposite of Transform.TransformVectors. |
| IsChildOf | Is this transform a child of parent? |
| LookAt | Rotates the transform so the forward vector points at /target/'s current position. |
| Rotate | Use Transform.Rotate to rotate GameObjects in a variety of ways. The rotation is often provided as an Euler angle and not a Quaternion. |
| RotateAround | Rotates the transform about axis passing through point in world coordinates by angle degrees. |
| SetAsFirstSibling | Move the transform to the start of the local transform list. |
| SetAsLastSibling | Move the transform to the end of the local transform list. |
| SetLocalPositionAndRotation | Sets the position and rotation of the Transform component in local space (i.e. relative to its parent transform). |
| SetParent | Set the parent of the transform. |
| SetPositionAndRotation | Sets the world space position and rotation of the Transform component. |
| SetSiblingIndex | Sets the sibling index. |
| TransformDirection | Transforms direction from local space to world space. |
| TransformDirections | Transforms multiple directions from local space to world space overwriting each original direction with the transformed version. |
| TransformPoint | Transforms position from local space to world space. |
| TransformPoints | Transforms multiple points from local space to world space overwriting each original point with the transformed version. |
| TransformVector | Transforms vector from local space to world space. |
| TransformVectors | Transforms multiple vectors from local space to world space overwriting each original vector with the transformed version. |
| Translate | Moves the transform along its x, y, and z axes by the values of the translation parameter's x, y, and z components respectively. |

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
