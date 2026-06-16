<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Grid.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Grid is the base class for plotting a layout of uniformly spaced points and lines.

The Grid component stores dimensional data of the layout of the grid and provides helper functions to retrieve information about the grid, such as the conversion between the cell location and local space location of items within the grid.

The layout of the Grid component is in the XY plane with the origin of the grid always beginning at (0, 0) and the X and Y coordinates of the grid only as positive values.

Implements the interface GridLayout.

### Properties

| Property | Description |
| --- | --- |
| cellGap | The size of the gap between each cell in the Grid. |
| cellLayout | The layout of the cells in the Grid. |
| cellSize | The size of each cell in the Grid. |
| cellSwizzle | The cell swizzle for the Grid. |

### Public Methods

| Method | Description |
| --- | --- |
| GetCellCenterLocal | Get the logical center coordinate of a grid cell in local space. |
| GetCellCenterWorld | Get the logical center coordinate of a grid cell in world space. |

### Static Methods

| Method | Description |
| --- | --- |
| InverseSwizzle | Does the inverse swizzle of the given position for given swizzle order. |
| Swizzle | Swizzles the given position with the given swizzle order. |

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
| cellGap | The size of the gap between each cell in the layout. |
| cellLayout | The layout of the cells. |
| cellSize | The size of each cell in the layout. |
| cellSwizzle | The cell swizzle for the layout. |
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
| CellToLocal | Converts a cell position to local position space. |
| CellToLocalInterpolated | Converts an interpolated cell position in floats to local position space. |
| CellToWorld | Converts a cell position to world position space. |
| GetBoundsLocal | Returns the local bounds for a cell at the location. |
| GetLayoutCellCenter | Get the default center coordinate of a cell for the set layout of the Grid. |
| LocalToCell | Converts a local position to cell position. |
| LocalToCellInterpolated | Converts a local position to cell position. |
| LocalToWorld | Converts a local position to world position. |
| WorldToCell | Converts a world position to cell position. |
| WorldToLocal | Converts a world position to local position. |
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
