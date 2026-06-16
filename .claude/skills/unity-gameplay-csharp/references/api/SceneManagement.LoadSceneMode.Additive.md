<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.LoadSceneMode.Additive.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Adds the Scene to the current loaded Scenes.

LoadSceneMode.Additive loads a Scene without unloading currently loaded Scenes. The additively loaded Scene appears in the Hierarchy window while another is active. To unload one of the currently loaded Scenes, see SceneManager.UnloadSceneAsync for more information.
Additional resources: SceneManager.LoadScene.
**Note**: If you are using light probes, you must run LightProbes.Tetrahedralize() afterwards.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;public class Example : MonoBehaviour
{
    void OnGUI()
    {
        //This displays a Button on the screen at position (20,30), width 150 and height 50. The button’s text reads the last parameter. Press this for the SceneManager to load the Scene.
        if (GUI.Button(new Rect(20, 30, 150, 30), "Other Scene Single"))
        {
            //The SceneManager loads your new Scene as a single Scene (not overlapping). This is Single mode.
            SceneManager.LoadScene("YourScene", LoadSceneMode.Single);
        }        //Whereas pressing this Button loads the Additive Scene.
        if (GUI.Button(new Rect(20, 60, 150, 30), "Other Scene Additive"))
        {
            //SceneManager loads your new Scene as an extra Scene (overlapping the other). This is Additive mode.
            SceneManager.LoadScene("YourScene", LoadSceneMode.Additive);
        }
    }
}
```
