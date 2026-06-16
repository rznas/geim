<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncOperation-allowSceneActivation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allow Scenes to be activated as soon as it is ready.

You can use this with SceneManager.LoadSceneAsync to delay the actual activation of the Scene and unloading of the previous Scene.

When allowSceneActivation is set to false, Unity stops progress at 0.9, and AsyncOperation.isDone remains false. When AsyncOperation.allowSceneActivation is set to true, isDone can complete. While isDone is false, the AsyncOperation queue is stalled. For example, if a LoadSceneAsync.allowSceneActivation is set to false, and another AsyncOperation (e.g. SceneManager.UnloadSceneAsync ) initializes, Unity does not call the second operation until the first AsyncOperation.allowSceneActivation is set to true.

You should set and use AsyncOperation.allowSceneActivation in coroutine functions. You cannot set and use AsyncOperation.allowSceneActivation within Awake, because this function is not a coroutine.

```csharp
//This script lets you load a Scene asynchronously. It uses an asyncOperation to calculate the progress and outputs the current progress to Text (could also be used to make progress bars).//Attach this script to a GameObject
//Create a Button (Create>UI>Button) and a Text GameObject (Create>UI>Text) and attach them both to the Inspector of your GameObject
//In Play Mode, press your Button to load the Scene, and the Text changes depending on progress. Press the space key to activate the Scene.
//Note: The progress may look like it goes straight to 100% if your Scene doesn’t have a lot to load.using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;public class AsyncOperationProgressExample : MonoBehaviour
{
    public Text m_Text;
    public Button m_Button;    void Start()
    {
        //Call the LoadButton() function when the user clicks this Button
        m_Button.onClick.AddListener(LoadButton);
    }    void LoadButton()
    {
        //Start loading the Scene asynchronously and output the progress bar
        StartCoroutine(LoadScene());
    }    IEnumerator LoadScene()
    {
        yield return null;        //Begin to load the Scene you specify
        AsyncOperation asyncOperation = SceneManager.LoadSceneAsync("Scene3");
        //Don't let the Scene activate until you allow it to
        asyncOperation.allowSceneActivation = false;
        Debug.Log("Pro :" + asyncOperation.progress);
        //When the load is still in progress, output the Text and progress bar
        while (!asyncOperation.isDone)
        {
            //Output the current progress
            m_Text.text = "Loading progress: " + (asyncOperation.progress * 100) + "%";            // Check if the load has finished
            if (asyncOperation.progress >= 0.9f)
            {
                //Change the Text to show the Scene is ready
                m_Text.text = "Press the space bar to continue";
                //Wait to you press the space key to activate the Scene
                if (Input.GetKeyDown(KeyCode.Space))
                    //Activate the Scene
                    asyncOperation.allowSceneActivation = true;
            }            yield return null;
        }
    }
}
```
