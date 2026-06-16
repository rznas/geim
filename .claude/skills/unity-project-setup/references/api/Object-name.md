<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object-name.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The name of the object.

Components share the same name with the game object and all attached components. If a class derives from MonoBehaviour it inherits the "name" field from MonoBehaviour. If this class is also attached to GameObject, then "name" field is set to the name of that GameObject.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public GameObject exampleOne;
    public GameObject exampleTwo;
    public GameObject exampleThree;    void Start()
    {
        //Sets the name of GameObject One.
        exampleOne.name = "Ben";
        //Sets the name of GameObject Two.
        exampleTwo.name = "Ryan";
        //Sets the name of GameObject Three.
        exampleThree.name = "Oscar";        //Displays their names in the console.
        Debug.Log("The names of these three objects are " + exampleOne.name + exampleTwo.name + exampleThree.name);
    }
}
```
