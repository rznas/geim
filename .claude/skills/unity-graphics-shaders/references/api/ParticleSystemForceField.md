<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ParticleSystemForceField.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Script interface for Particle System Force Fields.

Particle System Force Fields can be used to influence groups of particles that enter each field's zone of influence.

The shape of the Force Field can be set to a variety of shapes, and how the particles are affected is controlled by various properties in the Force Field.

As part of choosing the shape, you may define a start and end range. The end range describes the maximum extent of the shape, and the start range can be used to create a hollow shape.

A number of forces can be applied to particles that are within this volume: directional, gravitational, rotational, drag, and a vector field.

The settings for each type of force make use of the MinMaxCurve type, which is also used in the Particle System. This type allows you to set simple uniform values, or more complicated values that vary per-particle, and vary over the lifetime of each particle.

```csharp
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;[RequireComponent(typeof(ParticleSystem))]
public class ExampleClass : MonoBehaviour
{
    public ParticleSystemForceFieldShape m_Shape = ParticleSystemForceFieldShape.Sphere;
    public float m_StartRange = 0.0f;
    public float m_EndRange = 3.0f;
    public Vector3 m_Direction = Vector3.zero;
    public float m_Gravity = 0.0f;
    public float m_GravityFocus = 0.0f;
    public float m_RotationSpeed = 0.0f;
    public float m_RotationAttraction = 0.0f;
    public Vector2 m_RotationRandomness = Vector2.zero;
    public float m_Drag = 0.0f;
    public bool m_MultiplyDragByParticleSize = false;
    public bool m_MultiplyDragByParticleVelocity = false;    private ParticleSystemForceField m_ForceField;    void Start()
    {
        // Create a Force Field
        var go = new GameObject("ForceField", typeof(ParticleSystemForceField));
        go.transform.position = new Vector3(0, 2, 0);
        go.transform.rotation = Quaternion.Euler(new Vector3(90.0f, 0.0f, 0.0f));        m_ForceField = go.GetComponent<ParticleSystemForceField>();        // Configure Particle System
        transform.position = new Vector3(0, -4, 0);
        transform.rotation = Quaternion.identity;
        var ps = GetComponent<ParticleSystem>();        var main = ps.main;
        main.startSize = new ParticleSystem.MinMaxCurve(0.05f, 0.2f);
        main.startSpeed = new ParticleSystem.MinMaxCurve(1.5f, 2.5f);
        main.maxParticles = 100000;        var emission = ps.emission;
        emission.rateOverTime = 0.0f;
        emission.burstCount = 1;
        emission.SetBurst(0, new ParticleSystem.Burst(0.0f, 200, 200, -1, 0.1f));        var shape = ps.shape;
        shape.shapeType = ParticleSystemShapeType.SingleSidedEdge;
        shape.radius = 5.0f;
        shape.radiusMode = ParticleSystemShapeMultiModeValue.BurstSpread;
        shape.randomPositionAmount = 0.1f;
        shape.randomDirectionAmount = 0.05f;        var forces = ps.externalForces;
        forces.enabled = true;
    }    void Update()
    {
        m_ForceField.shape = m_Shape;
        m_ForceField.startRange = m_StartRange;
        m_ForceField.endRange = m_EndRange;
        m_ForceField.directionX = m_Direction.x;
        m_ForceField.directionY = m_Direction.y;
        m_ForceField.directionZ = m_Direction.z;
        m_ForceField.gravity = m_Gravity;
        m_ForceField.gravityFocus = m_GravityFocus;
        m_ForceField.rotationSpeed = m_RotationSpeed;
        m_ForceField.rotationAttraction = m_RotationAttraction;
        m_ForceField.rotationRandomness = m_RotationRandomness;
        m_ForceField.drag = m_Drag;
        m_ForceField.multiplyDragByParticleSize = m_MultiplyDragByParticleSize;
        m_ForceField.multiplyDragByParticleVelocity = m_MultiplyDragByParticleVelocity;
    }    void OnGUI()
    {
        GUIContent[] shapeLabels = Enum.GetNames(typeof(ParticleSystemForceFieldShape)).Select(n => new GUIContent(n)).ToArray();
        m_Shape = (ParticleSystemForceFieldShape)GUI.SelectionGrid(new Rect(25, 25, 400, 25), (int)m_Shape, shapeLabels, 4);        float y = 80.0f;
        float spacing = 40.0f;        GUI.Label(new Rect(25, y, 140, 30), "Start Range");
        m_StartRange = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_StartRange, 0.0f, 2.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "End Range");
        m_EndRange = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_EndRange, 2.0f, 3.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Direction");
        m_Direction.x = GUI.HorizontalSlider(new Rect(165, y + 5, 40, 30), m_Direction.x, -1.0f, 1.0f);
        m_Direction.y = GUI.HorizontalSlider(new Rect(210, y + 5, 40, 30), m_Direction.y, -1.0f, 1.0f);
        m_Direction.z = GUI.HorizontalSlider(new Rect(255, y + 5, 40, 30), m_Direction.z, -1.0f, 1.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Gravity");
        m_Gravity = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_Gravity, -0.05f, 0.05f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Gravity Focus");
        m_GravityFocus = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_GravityFocus, 0.0f, 1.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Rotation Speed");
        m_RotationSpeed = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_RotationSpeed, -10.0f, 10.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Rotation Attraction");
        m_RotationAttraction = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_RotationAttraction, 0.0f, 0.01f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Rotation Randomness");
        m_RotationRandomness.x = GUI.HorizontalSlider(new Rect(165, y + 5, 60, 30), m_RotationRandomness.x, 0.0f, 1.0f);
        m_RotationRandomness.y = GUI.HorizontalSlider(new Rect(230, y + 5, 60, 30), m_RotationRandomness.y, 0.0f, 1.0f);
        y += spacing;        GUI.Label(new Rect(25, y, 140, 30), "Drag");
        m_Drag = GUI.HorizontalSlider(new Rect(165, y + 5, 100, 30), m_Drag, 0.0f, 20.0f);
        y += spacing;        m_MultiplyDragByParticleSize = GUI.Toggle(new Rect(25, y, 220, 30), m_MultiplyDragByParticleSize, "Multiply Drag by Particle Size");
        y += spacing;        m_MultiplyDragByParticleVelocity = GUI.Toggle(new Rect(25, y, 220, 30), m_MultiplyDragByParticleVelocity, "Multiply Drag by Particle Velocity");
        y += spacing;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| directionX | Apply a linear force along the local X axis to particles within the volume of the Force Field. |
| directionY | Apply a linear force along the local Y axis to particles within the volume of the Force Field. |
| directionZ | Apply a linear force along the local Z axis to particles within the volume of the Force Field. |
| drag | Apply drag to particles within the volume of the Force Field. |
| endRange | Determines the size of the shape used for influencing particles. |
| gravity | Apply gravity to particles within the volume of the Force Field. |
| gravityFocus | When using the gravity force, set this value between 0 and 1 to control the focal point of the gravity effect. |
| length | Describes the length of the Cylinder when using the Cylinder Force Field shape to influence particles. |
| multiplyDragByParticleSize | When using Drag, the drag strength will be multiplied by the size of the particles if this toggle is enabled. |
| multiplyDragByParticleVelocity | When using Drag, the drag strength will be multiplied by the speed of the particles if this toggle is enabled. |
| rotationAttraction | Controls how strongly particles are dragged into the vortex motion. |
| rotationRandomness | Apply randomness to the Force Field axis that particles will travel around. |
| rotationSpeed | The speed at which particles are propelled around a vortex. |
| shape | Selects the type of shape used for influencing particles. |
| startRange | Setting a value greater than 0 creates a hollow Force Field shape. This will cause particles to not be affected by the Force Field when closer to the center of the volume than the startRange property. |
| vectorField | Apply forces to particles within the volume of the Force Field, by using a 3D texture containing vector field data. |
| vectorFieldAttraction | Controls how strongly particles are dragged into the vector field motion. |
| vectorFieldSpeed | The speed at which particles are propelled through the vector field. |

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
