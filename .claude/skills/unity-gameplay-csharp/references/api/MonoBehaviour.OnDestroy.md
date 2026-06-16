<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnDestroy.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Called when a GameObject or component is about to be destroyed.

`OnDestroy` is called in the following scenarios:

- When a component or its parent GameObject is explicitly destroyed with Object.Destroy.
- When a scene ends or is unloaded, all GameObjects not preserved with a call to Object.DontDestroyOnLoad are destroyed, and their MonoBehaviours receive `OnDestroy`. This includes closing and opening scenes in the Editor, or by using SceneManager.UnloadSceneAsync and SceneManager.LoadScene.
- On quitting the runtime application, or exiting Play mode in the Editor.

**Note:** `OnDestroy` is only called on GameObjects that have previously been active.

`OnDestroy` cannot be a coroutine.

**Warning**: If a user suspends your application on a mobile platform, the operating system can quit the application to free up resources. In this case, depending on the operating system, Unity might be unable to call this method. On mobile platforms, it is best practice to not rely on this method to save the state of your application. Instead, consider every loss of application focus as the exit of the application and use MonoBehaviour.OnApplicationFocus to save any data.

Additional resources: MonoBehaviour.OnDisable.

```csharp
// ExampleClass1 includes a button to switch scene, which calls OnDestroy and then switches to
// ExampleClass2. Once ExampleClass2 is active, OnDestroy will be called when the application closes. 
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;public class ExampleClass1 : MonoBehaviour
{
    private float timePass = 0.0f;
    private int updateCount = 0;    void Start()
    {
        Debug.Log("Start1");
    }    // code that generates a message every second
    void Update()
    {
        timePass += Time.deltaTime;        if (timePass > 1.0f)
        {
            timePass = 0.0f;
            Debug.Log("Update1: " + updateCount);
            updateCount = updateCount + 1;
        }
    }    void OnGUI()
    {
        if (GUI.Button(new Rect(10, 10, 250, 60), "Change to scene2"))
        {
            Debug.Log("Exit1");
            SceneManager.LoadScene(1);
        }
    }    // generate a message before the Start() function
    void OnEnable()
    {
        Debug.Log("OnEnable1");
    }    // generate a message when the game shuts down or switches to another Scene
    // or switched to ExampleClass2
    void OnDestroy()
    {
        Debug.Log("OnDestroy1");
    }
}
```

ExampleClass2:

```csharp
using UnityEngine;
using UnityEngine.UI;public class ExampleClass2 : MonoBehaviour
{
    void Start()
    {
        Debug.Log("Start2");
    }    void OnEnable()
    {
        Debug.Log("OnEnable2");
    }    // generate a message when the game shuts down
    void OnDestroy()
    {
        Debug.Log("OnDestroy2");
    }
}
```
