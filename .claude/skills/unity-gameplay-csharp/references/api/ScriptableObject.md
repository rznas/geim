<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ScriptableObject.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A class you can derive from if you want to create objects that live independently of GameObjects.

Use ScriptableObjects to centralise data in a way that can be conveniently accessed from scenes and assets within a project.

Instantiate ScriptableObject objects with CreateInstance.

You can save ScriptableObjects to asset files either from the Editor UI (see CreateAssetMenuAttribute), or by calling AssetDatabase.CreateAsset from a script. You can also generate ScriptableObjects as an output from a ScriptedImporter. See AssetImportContext.AddObjectToAsset.

If a `ScriptableObject` has not been saved to an asset, and it's referenced from an object in a scene, Unity serializes it directly into the scene file. For ScriptableObjects that have only a single persistent instance within a project and are only used in Edit mode, you can use the ScriptableSingleton<T0> base class. For runtime singleton ScriptableObjects, you must implement your own singleton pattern and manage asset creation and loading manually.

Access previously saved objects using AssetDatabase, for example AssetDatabase.LoadAssetAtPath. When a ScriptableObject is referenced from a field on a MonoBehaviour, the ScriptableObject is automatically loaded, so a script can simply use the value of the field to reach it.

The C# fields of a `ScriptableObject` are serialized exactly like fields on a MonoBehaviour, refer to Script Serialization for details. Classes that include big arrays, or other potentially large data, should be declared with the PreferBinarySerialization attribute, because YAML is not an efficient representation for that sort of data.

Calling `Destroy` on a `ScriptableObject` releases native resources associated with it but the object stays in memory until garbage collected. Objects in this detached state will appear to be null despite not really being so. However, this class doesn't support the [null-conditional operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions#null-conditional-operator) (**?.**) and the [null-coalescing operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/language-specification/expressions#the-null-coalescing-operator)(**??**).

The following example demonstrates a typical use of a ScriptableObject: different types of vehicle parameters are represented in the fields of a VehicleTypeInfo class, derived from ScriptableObject. Each type of vehicle would have its own asset file, with the parameter values set appropriately for the type. Each instance of the vehicle in the game would have a reference to the asset corresponding to its type, rather than keeping its own redundant copy of each parameter. This design makes it convenient to tweak vehicle behaviour in a central location. It is also good for performance, especially in cases where the size of the shared data is substantial.

The first script of the example implements a class derived from ScriptableObject.

```csharp
using UnityEngine;[CreateAssetMenu]
public class VehicleTypeInfo : ScriptableObject
{
    // Class that represents a specific type of vehicle
    [Range(0.1f, 100f)]
    public float m_MaxSpeed = 0.1f;    [Range(0.1f, 10f)]
    public float m_MaxAcceration = 0.1f;    // This class could have many other vehicle parameters, such as Turning Radius, Range, Damage etc
}
```

The second script implements a MonoBehaviour that uses the ScriptableObject.

```csharp
using UnityEngine;
using UnityEditor;public class VehicleInstance : MonoBehaviour
{
    // Snippet of a MonoBehaviour that would control motion of a specific vehicle.
    // In PlayMode it accelerates up to the maximum speed permitted by its type    [Range(0f, 200f)]
    public float m_CurrentSpeed;    [Range(0f, 50f)]
    public float m_Acceleration;    // Reference to the ScriptableObject asset
    public VehicleTypeInfo m_VehicleType;    public void Initialize(VehicleTypeInfo vehicleType)
    {
        m_VehicleType = vehicleType;
        m_CurrentSpeed = 0f;
        m_Acceleration = Random.Range(0.05f, m_VehicleType.m_MaxAcceration);
    }    void Update()
    {
        m_CurrentSpeed += m_Acceleration * Time.deltaTime;        // Use parameter from the ScriptableObject to control the behaviour of the Vehicle
        if (m_VehicleType && m_VehicleType.m_MaxSpeed < m_CurrentSpeed)
            m_CurrentSpeed = m_VehicleType.m_MaxSpeed;        gameObject.transform.position += gameObject.transform.forward * Time.deltaTime * m_CurrentSpeed;
    }
}public class ScriptableObjectVehicleExample
{
    [MenuItem("Example/Setup ScriptableObject Vehicle Example")]
    static void MenuCallback()
    {
        // This example programmatically performs steps that would typically be performed from the Editor's user interface
        // to creates a simple demonstration.  When going into Playmode the three objects will move according to the limits
        // set by their vehicle type.        // Step 1 - Create or reload the assets that store each VehicleTypeInfo object.
        VehicleTypeInfo wagon = AssetDatabase.LoadAssetAtPath<VehicleTypeInfo>("Assets/VehicleTypeWagon.asset");
        if (wagon == null)
        {
            // Create and save ScriptableObject because it doesn't exist yet
            wagon = ScriptableObject.CreateInstance<VehicleTypeInfo>();
            wagon.m_MaxSpeed = 5f;
            wagon.m_MaxAcceration = 0.5f;
            AssetDatabase.CreateAsset(wagon, "Assets/VehicleTypeWagon.asset");
        }        VehicleTypeInfo cruiser = AssetDatabase.LoadAssetAtPath<VehicleTypeInfo>("Assets/VehicleTypeCruiser.asset");
        if (cruiser == null)
        {
            cruiser = ScriptableObject.CreateInstance<VehicleTypeInfo>();
            cruiser.m_MaxSpeed = 75f;
            cruiser.m_MaxAcceration = 2f;
            AssetDatabase.CreateAsset(cruiser, "Assets/VehicleTypeCruiser.asset");
        }        // Step 2 - Create some example vehicles in the current scene
        {
            var vehicle = GameObject.CreatePrimitive(PrimitiveType.Sphere);
            vehicle.name = "Wagon1";
            var vehicleBehaviour = vehicle.AddComponent<VehicleInstance>();
            vehicleBehaviour.Initialize(wagon);
        }        {
            var vehicle = GameObject.CreatePrimitive(PrimitiveType.Sphere);
            vehicle.name = "Wagon2";
            var vehicleBehaviour = vehicle.AddComponent<VehicleInstance>();
            vehicleBehaviour.Initialize(wagon);
        }        {
            var vehicle = GameObject.CreatePrimitive(PrimitiveType.Cube);
            vehicle.name = "Cruiser1";
            var vehicleBehaviour = vehicle.AddComponent<VehicleInstance>();
            vehicleBehaviour.Initialize(cruiser);
        }
    }
}
```

### Static Methods

| Method | Description |
| --- | --- |
| CreateInstance | Creates an instance of a scriptable object. |

### Messages

| Message | Description |
| --- | --- |
| Awake | Called when an instance of ScriptableObject is created. |
| OnDestroy | This function is called when the scriptable object will be destroyed. |
| OnDisable | This function is called when the scriptable object goes out of scope. |
| OnEnable | This function is called when the object is loaded. |
| OnValidate | Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector. |
| Reset | Reset to default values. |

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
