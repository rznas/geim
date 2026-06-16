<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/GameObject-scene.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The Scene that contains the GameObject.

```csharp
//Output the name of the Scene this GameObject belongs tousing UnityEngine;
using UnityEngine.SceneManagement;public class Example : MonoBehaviour
{
    void Start()
    {
        Scene scene = gameObject.scene;
        Debug.Log(gameObject.name + " is from the Scene: " + scene.name);
    }
}
```
