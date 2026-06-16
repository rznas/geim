<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animator.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Manages, controls, and evaluates the animation of a GameObject.

The Animator is the main Component in the Mecanim animation system. The Animator evaluates Animation Clips and manages Animator States in Animator State Machines.

**Control the Animator with an AnimatorController**

Typically, you configure an Animator with an AnimatorController asset. This asset determines which animation plays. To learn how to build an AnimatorController, consult Animator Controller. Once configured with an AnimatorController, you can influence the flow of the state machine through the following methods:

- Use Animator.SetFloat, Animator.SetInteger, Animator.SetBool, or Animator.SetTrigger, through AnimatorControllerProperty, to trigger an AnimatorController transition.
- Use Animator.Play, Animator.PlayInFixedTime, Animator.Crossfade, or Animator.CrossFadeInFixedTime to force the AnimatorController to a specific state.
- Use Animator.SetLayerWeight to modify the weight of an AnimatorControllerLayer.

For more advanced use cases, you can control an Animator with the Playables API. 

**Animator execution**

By default, an Animator evaluates on each frame, following Time.deltaTime. On a frame where none of the paired Renderers are visible, the Animator only updates the position of the root GameObject. No other transforms or component properties are updated. To change this default behavior, use one of the following methods:

- Use Animator.updateMode to choose how the Animator updates.
- Use Animator.cullingMode to select what the Animator updates when none of the associated Renderers are visible.
- Use Animator.Update to evaluate the Animator immediately. This is independent of the update mode.

**Root Motion** 
 
Root Motion refers to the cumulative displacement of a GameObject hierarchy. For more information, consult How Root Motion works.

When Animator.applyRootMotion is true, the Animator does the following on each frame: 

 - Automatically calculates the displacement of the Root joint for the frame. - Adds this displacement to the position and rotation of the GameObject with the Animator Component. For information on how to override this behavior, consult Scripting Root Motion.

**Generic and Humanoid animation**

The Animator evaluates two types of Animation Clips: Generic and Humanoid. 

A Generic animation clip contains multiple animation curves where each curve animates a property of either a Transform or a MonoBehaviour. A Generic clip is authored for and animates a specific GameObject hierarchy. If you attempt to use a Generic clip on a different GameObject hierarchy, it might not play back as expected.

A Humanoid animation clip is designed for human or human-like bipedal GameObject hierarchies. To use a Humanoid clip on a bipedal GameObject hierarchy, you must configure an Animator with a Humanoid Avatar.

You can reuse the same Humanoid clip on any Animator configured with a Humanoid Avatar to reduce runtime memory usage and build size. However, this increases CPU usage. Expect a 15 to 20 percent increase in the time spent animating a GameObject hierarchy when evaluating Humanoid AnimationClips.

To determine if the benefits of using Humanoid clips is worth the cost in CPU peformance, perform your own experiments on your target platforms.

It is recommended that you exclusively use Humanoid clips or Generic clips.

**Inverse Kinematics**

The Animator class includes inverse kinematics methods that you can use to configure dynamic interactions between a humanoid and scene objects. Consult Inverse Kinematics for steps and an example.

**SetTarget**

When you want a character to interact with an object that is too far to reach with inverse kinematics, use Animator.SetTarget to adjust the position and rotation of a character over time to ensure its hand or foot reaches the object.

**Bindings and performance**

To track the properties that an Animator must write to, the Animator Component builds an internal collection of bindings. Each binding is built from the EditorCurveBinding of each AnimationClip associated with the Animator through assets and custom graphs. 

From this collection of bindings, the Animator builds an internal AnimationStream which defines the size of the buffers to allocate for AnimationClip evaluation. 

After an Animator allocates its buffers, it iterates through each binding and searches for the appropriate Component in the corresponding GameObject hierarchy. The Animator keeps a reference to each binding so it can be written to in subsequent frames.

This operation is called Rebinding, and it can be triggered by different events:

- First initialization of the Animator Component when loading a Scene or instantiating a Prefab.
- Changing the AnimatorController or AnimatorOverrideController in Animator.runtimeAnimatorController.
- Making changes to an AnimatorOverrideController set in Animator.runtimeAnimatorController.
- Making changes to a PlayableGraph connected to the Animator.
- Manually invoking Animator.Rebind.
- Enabling the GameObject to which the Animator Component is attached.

**Avoid and minimize Rebind** 
 
Use the following strategies to avoid and minimize the occurrence of the Rebind operation:

- The AnimatorController asset is already optimized to create a known set of bindings at Edit time. The Rebind operation, triggered by changes to Animator.runtimeAnimatorController, only needs to bind the properties of the AnimationStream with scene objects. If you need to change the AnimationClips that the Animator evaluates during runtime, then switching to a new AnimatorController asset is the strategy which will incur the smallest Rebind cost. Note that this will reset the state of the state machine to the default state(s) of the new AnimatorController.
- Prioritize prebuilt AnimatorOverrideControllers over dynamically built ones. Use an Animator Override Controller asset to change clips at runtime without resetting the state of the state machine. If you use an Animator Override Controller built at Edit time, the Rebind operation has the same cost as changing an AnimatorController. If you dynamically build an AnimatorController at Runtime, the Rebind operation iterates over each clip in the AnimatorOverrideController because the bindings are unknown.
- PlayableGraphs execute a Rebind operation after every change to the graph, and large graphs have a significant Rebind cost. There are two optimization strategies you can apply: either maintain a small graph and update it as needed, or build a large graph and avoid changes as much as possible. Performance depends on the complexity of both your clips and your graph; experiment to determine which strategy is better suited for your use case.
- If you disable a GameObject for pooling purposes, the Animator performs the Rebind operation when the GameObject is activated again. This might cancel the performance gained by pooling. It is recommended that you disable the components on a GameObject instead of disabling the GameObject itself. When you disable an Animator, it pauses evaluation but keeps the internal state intact.
- When you add a new GameObject to a hierarchy associated with an Animator Component, you must manually invoke Animator.Rebind so that the Animator recognizes and is able to write to the new GameObject. If you add many new GameObjects, it is recommended that you add the GameObjects first and invoke Animator.Rebind once instead of invoking this method multiple times.

**Default values**

You can configure states to write default values in the AnimatorController. When you enable AnimatorState.writeDefaultValues and evaluate an AnimatorState, the Animator writes the default values for the properties that are not animated by the Animation Clips of that state. 

These default values are collected from the Scene when the Animator is first initialized and whenever a Rebind operation completes. If a Rebind occurs during evaluation, the Animator collects the current state of the properties in the scene as new default values. This might lead to problematic results because the new default values might be arbitrary. 

If you want to perform a Rebind operation and some of the states in your AnimatorController rely on default values, use Animator.writeDefaultValuesOnDisable to ensure that the Animator restores all animated properties from their original values. This ensures consistent default values across the lifetime of the Animator component.

However, writing default values back to the Scene also has a performance costs. If you are experiencing performance issues, consider not relying on default values or avoiding the Rebind operation.

You can also manually restore the default values of animated properties with Animator.WriteDefaultValues.

**Recording system**

The Animator includes a recording system that you can use to record and play back a maximum of ten thousand frames of animated properties. Consult Animator.StartRecording and Animator.StartPlayback for more information.

**Other performance considerations**

The Mecanim Animation System is complex. The choices that you make can affect the performance of your game. The following lists some things you should consider when you design your game:

- The Rebind operation is resource intensive and might lead to CPU spikes. Use a single AnimatorController and avoid Rebind operations as much as possible. This generally results in more stable performance.
- When you use an AnimatorController, Unity evaluates each non-synchronized state machine at every frame. This includes layers set to a weight of zero. To improve performance, avoid unused AnimatorController layers.
- The Mecanim Animation System evaluates and updates Animator Components using parallel execution which divides the workload across multiple CPU cores. When you use Animator.Update to manually evaluate an Animator Component, Mecanim does not use parallel execution. To manually control the execution and benefit from parallel evaluation, bundle together multiple Animators in a PlayableGraph and manually update the PlayableGraph. This takes advantage of parallel execution while still maintaining manual control.
- Unity's Transform System only allows a single thread to write to a Transform hierarchy (a Root GameObject and its children) at a time. If you group multiple Animators under the same root GameObject, this prevents Mecanim from taking advantage of multi-threading when parallel updating Transforms and might result in reduced performance. It is recommended that you avoid grouping Animators in hierarchies of GameObjects, unless necessary for parenting reasons.
- StateMachineBehaviour introduces multiple synchronization points with the main thread. In some cases, callbacks can prevent parallel evaluation of multiple state machines. To avoid this issue, use StateMachineBehaviour sparingly.
- To maintain determinism, the Animator writes every animated property at every frame regardless of whether the property value has changed. This can cause known performance issues when animating RectTransform components. To avoid these issues, use the Animation Component to animate RectTransform.
- Since the AnimatorController is a state machine, it continuously evaluates whether transitions must be taken. This evaluation occurs even when the AnimatorController reaches the end of the current state. This means that an idle Animator consumes CPU. For single-shot animations, and for GameObjects that are rarely animated, use the Animation Component or the Playables API.
- The Humanoid system has a performance overhead. To avoid this overhead, use Generic animations wherever possible.```

### Properties

| Property | Description |
| --- | --- |
| angularVelocity | Gets the avatar angular velocity for the last evaluated frame. |
| animatePhysics | When enabled, the physics system uses animated transforms from GameObjects with kinematic Rigidbody components to influence other GameObjects. |
| applyRootMotion | Should root motion be applied? |
| avatar | Gets/Sets the current Avatar. |
| avatarRoot | Returns the Avatar root Transform. |
| bodyPosition | The position of the body center of mass. |
| bodyRotation | The rotation of the body center of mass. |
| cullingMode | Controls culling of this Animator component. |
| deltaPosition | Gets the avatar delta position for the last evaluated frame. |
| deltaRotation | Gets the avatar delta rotation for the last evaluated frame. |
| feetPivotActive | Blends pivot point between body center of mass and feet pivot. |
| fireEvents | Sets whether the Animator sends events of type AnimationEvent. |
| gravityWeight | The current gravity weight based on current animations that are played. |
| hasBoundPlayables | Returns true if Animator has any playables assigned to it. |
| hasRootMotion | Returns true if the current rig has root motion. |
| hasTransformHierarchy | Returns true if the object has a transform hierarchy. |
| humanScale | Returns the scale of the current Avatar for a humanoid rig, (1 by default if the rig is generic). |
| isHuman | Returns true if the current rig is humanoid, false if it is generic. |
| isInitialized | Returns whether the animator is initialized successfully. |
| isMatchingTarget | If automatic matching is active. |
| isOptimizable | Returns true if the current rig is optimizable with AnimatorUtility.OptimizeTransformHierarchy. |
| keepAnimatorStateOnDisable | Controls the behaviour of the Animator component when a GameObject is inactive. |
| layerCount | Returns the number of layers in the controller. |
| layersAffectMassCenter | Additional layers affects the center of mass. |
| leftFeetBottomHeight | Get left foot bottom height. |
| parameterCount | Returns the number of parameters in the controller. |
| parameters | The AnimatorControllerParameter list used by the animator. (Read Only) |
| pivotPosition | Get the current position of the pivot. |
| pivotWeight | Gets the pivot weight. |
| playableGraph | The PlayableGraph created by the Animator. |
| playbackTime | Sets the playback position in the recording buffer. |
| recorderMode | Gets the mode of the Animator recorder. |
| recorderStartTime | Start time of the first frame of the buffer relative to the frame at which StartRecording was called. |
| recorderStopTime | End time of the recorded clip relative to when StartRecording was called. |
| rightFeetBottomHeight | Get right foot bottom height. |
| rootPosition | The root position, the position of the game object. |
| rootRotation | The root rotation, the rotation of the game object. |
| runtimeAnimatorController | The runtime representation of AnimatorController that controls the Animator. |
| speed | The playback speed of the Animator. 1 is normal playback speed. |
| stabilizeFeet | Automatic stabilization of feet during transition and blending. |
| targetPosition | Returns the position of the target specified by SetTarget. |
| targetRotation | Returns the rotation of the target specified by SetTarget. |
| updateMode | Specifies the update mode of the Animator. |
| velocity | Gets the avatar velocity for the last evaluated frame. |
| writeDefaultValuesOnDisable | Specifies whether playable graph values are reset or preserved when the Animator is disabled. |

### Public Methods

| Method | Description |
| --- | --- |
| ApplyBuiltinRootMotion | Apply the default Root Motion. |
| CrossFade | Creates a crossfade from the current state to any other state using normalized times. |
| CrossFadeInFixedTime | Creates a crossfade from the current state to any other state using times in seconds. |
| GetAnimatorTransitionInfo | Returns an AnimatorTransitionInfo with the informations on the current transition. |
| GetBehaviour | Returns the first StateMachineBehaviour that matches type T or is derived from T. Returns null if none are found. |
| GetBehaviours | Returns all StateMachineBehaviour that match type T or are derived from T. Returns null if none are found. |
| GetBoneTransform | Retrieves the Transform mapped to a human bone based on its id. |
| GetBool | Returns the value of the given boolean parameter. |
| GetCurrentAnimatorClipInfo | Returns an array of all the AnimatorClipInfo in the current state of the given layer. |
| GetCurrentAnimatorClipInfoCount | Returns the number of AnimatorClipInfo in the current state. |
| GetCurrentAnimatorStateInfo | Returns an AnimatorStateInfo with the information on the current state. |
| GetFloat | Returns the value of the given float parameter. |
| GetIKHintPosition | Gets the position of an IK hint. |
| GetIKHintPositionWeight | Gets the translative weight of an IK Hint (0 = at the original animation before IK, 1 = at the hint). |
| GetIKPosition | Gets the position of an IK goal. |
| GetIKPositionWeight | Gets the translative weight of an IK goal (0 = at the original animation before IK, 1 = at the goal). |
| GetIKRotation | Gets the rotation of an IK goal. |
| GetIKRotationWeight | Gets the rotational weight of an IK goal (0 = rotation before IK, 1 = rotation at the IK goal). |
| GetInteger | Returns the value of the given integer parameter. |
| GetLayerIndex | Returns the index of the animation layer with the given name. |
| GetLayerName | Returns the layer name. |
| GetLayerWeight | Returns the weight of the layer at the specified index. |
| GetNextAnimatorClipInfo | Returns an array of all the AnimatorClipInfo in the next state of the given layer. |
| GetNextAnimatorClipInfoCount | Returns the number of AnimatorClipInfo in the next state. |
| GetNextAnimatorStateInfo | Returns an AnimatorStateInfo with the information on the next state. |
| GetParameter | Obtains a reference to the AnimatorControllerParameter at the given index. |
| HasState | Returns true if the state exists in this layer, false otherwise. |
| InterruptMatchTarget | Interrupts the automatic target matching. |
| IsInTransition | Returns true if there is a transition on the given layer, false otherwise. |
| IsParameterControlledByCurve | Returns true if the parameter is controlled by a curve, false otherwise. |
| MatchTarget | Automatically adjust the GameObject position and rotation. |
| Play | Plays a state. |
| PlayInFixedTime | Plays a state. |
| Rebind | Rebind all the animated properties and mesh data with the Animator. |
| ResetControllerState | Resets the AnimatorController to its default state. |
| ResetTrigger | Resets the value of the given trigger parameter. |
| SetBoneLocalRotation | Sets local rotation of a human bone during a IK pass. |
| SetBool | Sets the value of the given boolean parameter. |
| SetFloat | Send float values to the Animator to affect transitions. |
| SetIKHintPosition | Sets the position of an IK hint. |
| SetIKHintPositionWeight | Sets the translative weight of an IK hint (0 = at the original animation before IK, 1 = at the hint). |
| SetIKPosition | Sets the position of an IK goal. |
| SetIKPositionWeight | Sets the translative weight of an IK goal (0 = at the original animation before IK, 1 = at the goal). |
| SetIKRotation | Sets the rotation of an IK goal. |
| SetIKRotationWeight | Sets the rotational weight of an IK goal (0 = rotation before IK, 1 = rotation at the IK goal). |
| SetInteger | Sets the value of the given integer parameter. |
| SetLayerWeight | Changes the weight of the layer at a specific index. |
| SetLookAtPosition | Sets the look at position for a character during animations. |
| SetLookAtWeight | Set look at weights. |
| SetTarget | Sets an AvatarTarget and a targetNormalizedTime for the current state. |
| SetTrigger | Sets the value of the given trigger parameter. |
| StartPlayback | Sets the animator in playback mode. |
| StartRecording | Sets the animator in recording mode, and allocates a circular buffer of size frameCount. |
| StopPlayback | Stops the animator playback mode. When playback stops, the avatar resumes getting control from game logic. |
| StopRecording | Stops animator record mode. |
| Update | Evaluates the animator based on deltaTime. |
| WriteDefaultValues | Forces a write of the default values stored in the animator. |

### Static Methods

| Method | Description |
| --- | --- |
| StringToHash | Generates a parameter id from a string. |

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
