<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncOperation-progress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

What's the operation's progress. (Read Only)

Return an operation's progress. (Read Only) This returns how close the operation is to finishing. The operation is finished when the progress float reaches 1.0 and isDone is called. If you set allowSceneActivation to false, progress is halted at 0.9 until it is set to true. This is extremely useful for creating loading bars.

Additional resources: isDone.

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
