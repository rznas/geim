<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneManagement.Scene-buildIndex.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Return the index of the Scene in the Build Settings.

Scene.buildIndex varies from zero to the number of Scenes in the `Build Settings` minus one. This is because indexes start at zero, so the first Scene is at position zero in the buildIndex. For example, five Scenes in the `Build Settings` have an index from zero to four.

Unity ignores any numbers in a `Scene` name. For example, if you add a `Scene` called `scene15` to a list of five Scenes in the `Build Settings`, Unity gives it a buildIndex of 5.

A `Scene` that is not added to the `Scenes in Build` window returns a buildIndex one more than the highest in the list. For example, if you don’t add a `Scene` to a `Scenes in Build` window that already has 6 Scenes in it, then Scene.buildIndex returns 6 as its index .

If the `Scene` is loaded through an `AssetBundle`, Scene.buildIndex returns -1.

```csharp
using UnityEngine;
using UnityEngine.SceneManagement;// Show the buildIndex for the current script.
//
// The Build Settings window shows 5 added Scenes.  These have buildIndex values from
// 0 to 4. Each Scene has a version of this script applied.
//
// In the Project, create 5 Scenes called scene1, scene2, scene3, scene4 and scene5.
// In each Scene add an empty GameObject and attach this script to it.
//
// Each Scene randomly switches to a different Scene when the button is clicked.public class ExampleScript : MonoBehaviour
{
    Scene scene;    void Start()
    {
        scene = SceneManager.GetActiveScene();
        Debug.Log("Active Scene name is: " + scene.name + "\nActive Scene index: " + scene.buildIndex);
    }    void OnGUI()
    {
        GUI.skin.button.fontSize = 20;        if (GUI.Button(new Rect(10, 80, 180, 60), "Change from scene " + scene.buildIndex))
        {
            int nextSceneIndex = Random.Range(0, 4);
            SceneManager.LoadScene(nextSceneIndex, LoadSceneMode.Single);
        }
    }
}
```
