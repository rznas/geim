<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WheelCollider.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A special collider for vehicle wheels.

Wheel collider is used to model vehicle wheels. It simulates a spring and damper suspension setup, and uses a slip based tire friction model to calculate wheel contact forces.

Wheel's collision detection is performed by casting a ray from center downwards the local y-axis. The wheel has a radius and can extend downwards by suspensionDistance amount.

The wheel is controlled with motorTorque, brakeTorque and steerAngle properties.

Wheel collider computes friction separately from the rest of physics engine, using a slip based friction model. This allows for more realistic behaviour, but makes wheel colliders ignore standard PhysicsMaterial settings. Simulation of different road materials is done by changing the forwardFriction and sidewaysFriction based on what material the wheel is hitting. Additional resources: GetGroundHit and WheelFrictionCurve.

### Properties

| Property | Description |
| --- | --- |
| brakeTorque | Brake torque expressed in Newton metres. |
| center | The center of the wheel, measured in the object's local space. |
| forceAppPointDistance | Application point of the suspension and tire forces measured from the base of the resting wheel. |
| forwardFriction | Properties of tire friction in the direction the wheel is pointing in. |
| isGrounded | Indicates whether the wheel currently collides with something (Read Only). |
| mass | The mass of the wheel, expressed in kilograms. Must be larger than zero. Typical values would be in range (20,80). |
| motorTorque | Motor torque on the wheel axle expressed in Newton metres. Positive or negative depending on direction. |
| radius | The radius of the wheel, measured in local space. |
| rotationSpeed | Rotation speed of the wheel, measured in degrees per second. |
| rpm | Current wheel axle rotation speed, in rotations per minute (Read Only). |
| sidewaysFriction | Properties of tire friction in the sideways direction. |
| sprungMass | The mass supported by this WheelCollider. |
| steerAngle | Steering angle in degrees, always around the local y-axis. |
| suspensionDistance | Maximum extension distance of wheel suspension, measured in local space. |
| suspensionExpansionLimited | Limits the expansion velocity of the Wheel Collider's suspension. If you set this property on a Rigidbody that has several Wheel Colliders, such as a vehicle, then it affects all other Wheel Colliders on the Rigidbody. |
| suspensionSpring | The parameters of wheel's suspension. The suspension attempts to reach a target position by applying a linear force and a damping force. |
| wheelDampingRate | The damping rate of the wheel. Must be larger than zero. |

### Public Methods

| Method | Description |
| --- | --- |
| ConfigureVehicleSubsteps | Configure vehicle sub-stepping parameters. |
| GetGroundHit | Gets ground collision data for the wheel. |
| GetWorldPose | Gets the world space pose of the wheel accounting for ground contact, suspension limits, steer angle, and rotation angle (angles in degrees). |
| ResetSprungMasses | Reset the sprung masses of the vehicle. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| attachedArticulationBody | The articulation body the collider is attached to. |
| attachedRigidbody | The rigidbody the collider is attached to. |
| bounds | The world space bounding volume of the collider (Read Only). |
| contactOffset | Contact offset value of this collider. |
| enabled | Enabled Colliders will collide with other Colliders, disabled Colliders won't. |
| excludeLayers | The additional layers that this Collider should exclude when deciding if the Collider can contact another Collider. |
| GeometryHolder | The structure holding the geometric shape of the collider and its type. (Read Only) |
| hasModifiableContacts | Specify whether this Collider's contacts are modifiable or not. |
| includeLayers | The additional layers that this Collider should include when deciding if the Collider can contact another Collider. |
| isTrigger | Specify if this collider is configured as a trigger. |
| layerOverridePriority | A decision priority assigned to this Collider used when there is a conflicting decision on whether a Collider can contact another Collider. |
| material | The material used by the collider. |
| providesContacts | Whether or not this Collider generates contacts for Physics.ContactEvent. |
| sharedMaterial | The shared physics material of this collider. |
| gameObject | The game object this component is attached to. A component is always attached to a game object. |
| tag | The tag of this game object. |
| transform | The Transform attached to this GameObject. |
| transformHandle | The TransformHandle of this GameObject. |
| hideFlags | Should the object be hidden, saved with the Scene or modifiable by the user? |
| name | The name of the object. |

### Public Methods

| Method | Description |
| --- | --- |
| ClosestPoint | The closest point on the collider given a specified location. |
| ClosestPointOnBounds | The closest point to the bounding box of the attached collider. |
| GetGeometry | Returns the geometric shape of the collider of the requested type. |
| Raycast | Casts a Ray that ignores all Colliders except this one. |
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

### Messages

| Message | Description |
| --- | --- |
| OnCollisionEnter | OnCollisionEnter is called when this collider/rigidbody has begun touching another rigidbody/collider. |
| OnCollisionExit | OnCollisionExit is called when this collider/rigidbody has stopped touching another rigidbody/collider. |
| OnCollisionStay | OnCollisionStay is called once per frame for every Collider or Rigidbody that touches another Collider or Rigidbody. |
| OnTriggerEnter | Called when a Collider with the Collider.isTrigger property overlaps another Collider. |
| OnTriggerExit | OnTriggerExit is called when the Collider other has stopped touching the trigger. |
| OnTriggerStay | OnTriggerStay is called almost all the frames for every Collider other that is touching the trigger. The function is on the physics timer so it won't necessarily run every frame. |
