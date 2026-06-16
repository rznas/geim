<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/CameraRays-cast.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Cast a ray from a camera

The most common use of a Ray from the **camera** is to perform a raycast out into the **scene**. A raycast sends an imaginary “laser beam” along the ray from its origin until it hits a **collider** in the scene. Information is then returned about the object and the point that was hit in a RaycastHit object. This is a very useful way to locate an object based on its onscreen image. For example, the object at the mouse position can be determined with the following code:

```csharp
using UnityEngine;
using System.Collections;

public class ExampleScript : MonoBehaviour {
    public Camera camera;

    void Start(){
        RaycastHit hit;
        Ray ray = camera.ScreenPointToRay(Input.mousePosition);
        
        if (Physics.Raycast(ray, out hit)) {
            Transform objectHit = hit.transform;
            
            // Do something with the object that was hit by the raycast.
        }
    }
}
```
