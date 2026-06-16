<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/execution-order.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Event function execution order

The following diagram provides a high-level overview of the execution sequence for event functions that run during the lifecycle of a MonoBehaviour script component. For readability, the scope of the chart is limited to key parts of the script lifecycle, with some extra internal subsystem updates provided for context. The full Player loop is a longer and more complex sequence of updates for specific systems and subsystems, which run one after the other in a defined default order. To retrieve the full Player loop and all of its systems, you can use the PlayerLoop API. You can also use this API to customize the Player loop sequence by removing systems, adding your own, and changing the update order.

For more information on each individual callback’s meaning and limitations, refer to the **Messages** section of the MonoBehaviour API reference.

## Before scene load and unload

Not shown in the previous diagram are the `SceneManager.sceneLoaded` and `SceneManager.sceneUnloaded` events which allow you to receive callbacks when a **scene** has loaded and unloaded respectively. Unity raises the `sceneLoaded` event after `OnEnable` but before `Start` for all objects in the scene. For details and example usage, refer to the relevant API reference pages.

For a diagram that includes scene load as part of the execution flow, refer to Details of disabling Domain and Scene reload

## Run code on Editor launch

Sometimes it can be useful to make parts of your code run immediately on launch of the Unity Editor or runtime, without any additional user action and without the code needing to be part of a MonoBehaviour script. You can run code on Editor launch without requiring any user action by applying the `[InitializeOnLoad]` attribute to a class that has a [static constructor](https://learn.microsoft.com/en-us/dotnet/csharp/programming-guide/classes-and-structs/static-constructors). Alternatively, you can apply the `[InitializeOnLoadMethod]` attribute to individual methods. For more information and usage examples, refer to the API references for these attributes.

## Run code on runtime intialization

You can run code on initialization of the runtime application by applying the `[RuntimeInitializeOnLoadMethodAttribute]` to methods. You can also specify a `RunTimeInitializeLoadType` attribute parameter to control where in the Player loop the attributed code executes. For more information on the execution order of methods marked with this attribute, refer to the API reference for `RuntimeInitializeOnLoadMethodAttribute`.

## Internal animation update

The following diagram shows the order of execution for the regular Animation update loop, and expands the nodes labelled **Internal animation update** in the previous diagram:

The following Animation loop callbacks shown in the diagram are called on **scripts** that derive from MonoBehaviour:

- `MonoBehaviour.OnAnimatorMove`
- `MonoBehaviour.OnAnimatorIK`

Additional animation-related event functions are called on scripts that derive from `StateMachineBehaviour`:

- `StateMachineBehaviour.OnStateMachineEnter`
- `StateMachineBehaviour.OnStateMachineExit`
- `StateMachineBehaviour.OnStateEnter`
- `StateMachineBehaviour.OnStateUpdate`
- `StateMachineBehaviour.OnStateExit`
- `StateMachineBehaviour.OnStateMove`
- `StateMachineBehaviour.OnStateIK`

Other animation functions shown in the diagram are internal to the animation system and are provided for context. These functions have associated Profiler markers so you can use the Profiler to see when in the frame Unity calls them. Knowing when Unity calls these functions can help you understand exactly when the event functions you do call are executed. For a full execution order of animation functions and profiler markers, refer to Profiler markers.

## Rendering

This execution order applies for the Built-in Render Pipeline only. For details of execution order in **render pipelines** based on the Scriptable Render Pipeline, refer to the relevant sections of the documentation for the Universal Render Pipeline or the High Definition Render Pipeline. If you want to do work immediately prior to rendering, refer to Application.onBeforeRender.

- `OnPreCull`: Called before the **camera** culls the scene. Culling determines which objects are visible to the camera. `OnPreCull` is called just before culling takes place.
- `OnBecameVisible`/`OnBecameInvisible`: Called when an object becomes visible/invisible to any camera. `OnBecameInvisible` is not shown in the flow chart above since an object may become invisible at any time.
- `OnWillRenderObject`: Called **once** for each camera if the object is visible.
- `OnPreRender`: Called before the camera starts rendering the scene.
- `OnRenderObject`: Called after all regular scene rendering is done. You can use GL class or Graphics.DrawMeshNow to draw custom geometry at this point.
- `OnPostRender`: Called after a camera finishes rendering the scene.
- `OnRenderImage`: Called after scene rendering is complete to allow **post-processing** of the image, see Post-processing Effects.
- `OnGUI`: Called multiple times per frame in response to GUI events. The Layout and Repaint events are processed first, followed by a Layout and keyboard/mouse event for each input event.
- `OnDrawGizmos` Used for drawing **Gizmos** in the **scene view** for visualisation purposes.

**Note**: OnPreCull, OnPreRender, OnPostRender, and OnRenderImage are built-in Unity event functions that are called on MonoBehaviour scripts but **only if those scripts are attached to the same object as an enabled Camera component**. If you want to receive the equivalent callbacks for `OnPreCull`, `OnPreRender`, and `OnPostRender` on a MonoBehaviour attached to a **different** object, you must use the equivalent delegates (note the lowercase `on` in the names) Camera.onPreCull, Camera.onPreRender, and Camera.onPostRender as shown in the code examples in the relevant pages of the scripting reference.

## Resumption of coroutines and asynchronous tasks

Suspended coroutines can resume at different points in the execution sequence depending on the yield instruction used. For example, coroutines that use `WaitForEndOfFrame` resume at the end of the frame, while those that use `WaitForFixedUpdate` resume at the end of the fixed update step. For more information, refer to Coroutines.

Regular .NET Tasks and asynchronous methods resume in the `Update` phase. Similarly to coroutines, Unity’s custom `Awaitable` class can resume at different points depending on the method you use when awaiting. For more information, refer to Asynchronous programming with the Awaitable class.

**Note**: The exact order of execution between resuming coroutines and asynchronous tasks is not guaranteed. Awaitables are grouped together and executed in the order they were awaited.

## Combining MonoBehaviours with Entities

When using the Entity Component System (ECS), Unity merges ECS system group updates into the Player update loop.

You can use the Entities Systems window to view the update order of ECS system groups relative to the full Player loop. For more information, refer to Update order of systems in the Entities package documentation.

## Limitations

In general, you can’t rely on the order in which the same event function is invoked for different **GameObjects**, except when the order is explicitly documented or settable.

You can’t specify the order in which an event function is called for different instances of the same MonoBehaviour script. For example, the `Update` function of one MonoBehaviour might be called before or after the `Update` function for the same MonoBehaviour on another GameObject, including its own parent or child GameObjects.

To configure the execution order between different MonoBehaviour scripts, refer to Script execution order.

## Additional resources

- Event functions
- MonoBehaviour
- PlayerLoop API reference
- Script execution order
