<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GridBrushBase.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Base class for authoring data on a grid with grid painting tools like paint, erase, pick, select and fill.

Inheriting this class and/or creating brush asset instances from your inherited class, you can create custom brushes which react to high level grid events like paint, erase, pick, select and fill.

```csharp
using UnityEngine;// Paints two Prefabs in checkerboard pattern
[CreateAssetMenu]
public class CheckerboardBrush : GridBrushBase
{
    public GameObject prefabA;
    public GameObject prefabB;    public override void Paint(GridLayout grid, GameObject brushTarget, Vector3Int position)
    {
        bool evenCell = Mathf.Abs(position.y + position.x) % 2 > 0;
        GameObject toBeInstantiated = evenCell ? prefabA : prefabB;        if (toBeInstantiated != null)
        {
            GameObject newInstance = Instantiate(toBeInstantiated, grid.CellToWorld(position), Quaternion.identity);
            newInstance.transform.SetParent(brushTarget.transform);
        }
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| BoxErase | Erases data on a grid within the given bounds. |
| BoxFill | Box fills tiles and GameObjects into given bounds within the selected layers. |
| ChangeZPosition | Changes the Z position of the GridBrushBase. |
| Erase | Erases data on a grid within the given bounds. |
| Flip | Flips the grid brush in the given FlipAxis. |
| FloodFill | Flood fills data onto a grid given the starting coordinates of the cell. |
| Move | Move is called when user moves the area previously selected with the selection marquee. |
| MoveEnd | MoveEnd is called when user has ended the move of the area previously selected with the selection marquee. |
| MoveStart | MoveEnd is called when user starts moving the area previously selected with the selection marquee. |
| Paint | Paints data into a grid within the given bounds. |
| Pick | Picks data from a grid given the coordinates of the cells. |
| ResetZPosition | Resets Z position changes of the GridBrushBase. |
| Rotate | Rotates all tiles on the grid brush with the given RotationDirection. |
| Select | Select an area of a grid. |

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
