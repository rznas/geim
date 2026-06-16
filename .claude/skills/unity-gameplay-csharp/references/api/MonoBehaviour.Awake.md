<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.Awake.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Unity calls `Awake` when loading an instance of a script component.

Unity calls `Awake` only once during the lifetime of the script instance. A script's lifetime lasts until the script is destroyed or the scene that contains it is unloaded. If the scene is loaded again, Unity loads the script instance again and calls `Awake` again. If the scene is loaded multiple times additively, Unity loads several script instances, and `Awake` is called once for each instance.

Unity calls `Awake` on `MonoBehaviour` script components when whichever of the following scenarios occurs first in the script instance's lifetime:

- The GameObject the script is attached to is active in the Hierarchy (GameObject.activeInHierarchy == `true`) and initializes on scene load.
- The GameObject the script is attached to goes from inactive (GameObject.activeInHierarchy == `false`) to active (GameObject.activeInHierarchy == `true`) for the first time.
- An active GameObject the script is attached to is created with Object.Instantiate and initializes.

Unity calls `Awake` regardless of the value of Behaviour.enabled for the script component itself, as long as the other conditions are met.

Use `Awake` to initialize variables or states before the application starts.

For active GameObjects in a scene, Unity calls `Awake` after all active GameObjects in the scene are initialized, so you can safely use methods such as GameObject.FindWithTag to query other GameObjects.

The order in which Unity calls each GameObject's `Awake` is not deterministic and you can't rely on `Awake` being called on one GameObject before or after another. For example, don't assume that a reference set up by one GameObject's `Awake` will be usable in another GameObject's `Awake`. Instead, you should use `Awake` to set up references between scripts, and use Start, which is called after all `Awake` calls are finished, to pass any information back and forth.

`Awake` is always called before any Start functions. This allows you to order initialization of scripts. `Awake` is called even if the script is a disabled component of an active GameObject. If a script component's `Awake` throws an exception, Unity disables the component. `Awake` cannot act as a coroutine.

Use `Awake` instead of the constructor for initialization, as the serialized state of the component is undefined at construction time. `Awake` is called once, just like the constructor.

For more information on the order of execution for event functions, refer to Event function execution order in the manual.

```csharp
using UnityEngine;public class ExampleClass : MonoBehaviour
{
    private GameObject target;    void Awake()
    {
        target = GameObject.FindWithTag("Player");
    }
}
```

An inactive GameObject can be activated when GameObject.SetActive is called on it.


 The following two example scripts **Example1** and **Example2** work together, and illustrate two timings when Awake() is called.
 To reproduce the example, create a scene with two GameObjects Cube1 and Cube2. Assign Example1 as a script component to Cube1, and set Cube1 as inactive, by unchecking the Inspector top-left check box (Cube1 will become invisible). Assign Example2 as a script component to Cube2, and set Cube1 as its `GO` variable.
 Enter Play mode: pressing the space key will execute code in Example2.Update that activates Cube1, and causes Example1.Awake() to be called.

```csharp
using UnityEngine;// Make sure that Cube1 is assigned this script and is inactive at the start of the game.public class Example1 : MonoBehaviour
{
    void Awake()
    {
        // Prints first
        Debug.Log("Example1.Awake() was called");
    }    void Start()
    {
        // Prints second
        Debug.Log("Example1.Start() was called");
    }    void Update()
    {
        if (Input.GetKeyDown("b"))
        {
            // Prints Last if "b" is pressed
            Debug.Log("b key was pressed");
        }
    }
}
```

Example2. This causes Example1.Awake() to be called. The Space key is used to perform this:

```csharp
using UnityEngine;public class Example2 : MonoBehaviour
{
    // Assign Cube1 to this variable GO before running the example
    public GameObject GO;    void Awake()
    {
        Debug.Log("Example2.Awake() was called");
    }    void Start()
    {
        Debug.Log("Example2.Start() was called");
    }    // track if Cube1 was already activated
    private bool activateGO = true;    void Update()
    {
        if (activateGO == true)
        {
            if (Input.GetKeyDown("space"))
            {
                Debug.Log("space key was pressed");
                GO.SetActive(true);
                activateGO = false;
            }
        }
    }
}
```
