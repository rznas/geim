<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.SceneManager-activeSceneChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| value | Use a subscription of either a UnityAction<Scene, Scene> or a method that takes two Scene types arguments. |

### Description

Subscribe to this event to get notified when the active Scene has changed.

This script added to activeSceneChanged takes two hidden arguments. These are the replaced Scene and the next Scene. The arguments are not visible.

In the Editor this event is sent only in Play mode (not in Edit mode). If the event is needed for Edit mode then use EditorSceneManager.activeSceneChangedInEditMode.

```csharp
// SceneManager.activeSceneChanged
//
// This example configures Scene1 to wait for 1.5 seconds before switching to Scene2.
// Scene1 is the replaced Scene; Scene2 is the new loaded Scene.using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;public class ScriptExample1 : MonoBehaviour
{
    public delegate void Change();
    public static event Change TimeChanged;    public void Start()
    {
        SceneManager.activeSceneChanged += ChangedActiveScene;        // wait 1.5 seconds before change to Scene2
        StartCoroutine(TimeChangedScene());
    }    IEnumerator TimeChangedScene()
    {
        print(Time.time + " seconds");
        yield return new WaitForSeconds(1.5f);
        print(Time.time + " seconds");        // call the event
        TimeChanged();
    }    private void ChangedActiveScene(Scene current, Scene next)
    {
        string currentName = current.name;        if (currentName == null)
        {
            // Scene1 has been removed
            currentName = "Replaced";
        }        Debug.Log("Scenes: " + currentName + ", " + next.name);
    }    void OnEnable()
    {
        Debug.Log("OnEnable");
        ScriptExample1.TimeChanged += ChangeScene;
    }    void ChangeScene()
    {
        Debug.Log("Changing to Scene2");
        SceneManager.LoadScene("Scene2");        Scene scene = SceneManager.GetSceneByName("Scene2");
        SceneManager.SetActiveScene(scene);
    }    void OnDisable()
    {
        ScriptExample1.TimeChanged -= ChangeScene;
        Debug.Log("OnDisable happened for Scene1");
    }
}
```

`ScriptExample2` simply announces that this is the active Scene.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEngine;public class ScriptExample2 : MonoBehaviour
{
    void Start()
    {
        Debug.Log("Script2 starting");
    }
}
```
