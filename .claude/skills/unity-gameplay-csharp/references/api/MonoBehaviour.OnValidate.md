<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MonoBehaviour.OnValidate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Editor-only function that Unity calls when the script is loaded or a value changes in the Inspector.

Use this callback to validate serialized fields and enforce data constraints in response to Inspector edits. This is the primary intended use case for `OnValidate`. 

`OnValidate` can also be called at various stages during the Editor's normal operation, such as loading scenes, building a Player, and entering Play mode. Because of this, don't treat `OnValidate` as a general-purpose callback for all property changes or Editor-side logic.

`OnValidate` can be called often when the user interacts with an Inspector in the Editor. It can also be called from threads other than Unity's main thread, such as the loading thread. For these reasons, only use `OnValidate` to validate the data that changed. Don't use it to do other tasks such as creating objects or calling other non-thread-safe Unity API.

You can't reliably perform Camera rendering operations from `OnValidate`. Instead, add a listener to EditorApplication.update, and perform the rendering during the next Editor Update call.

Additional resources: EditorApplication.update, EditorApplication.delayCall.

```csharp
using UnityEngine;public class Health : MonoBehaviour
{
    [SerializeField]
    private int maxHealth = 100;    [SerializeField]
    private int currentHealth = 100;    // Called in editor when values are changed in Inspector
    private void OnValidate()
    {
        // Ensure maxHealth is at least 1
        if (maxHealth < 1)
            maxHealth = 1;        // Clamp currentHealth between 0 and maxHealth
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);
    }
}
```
