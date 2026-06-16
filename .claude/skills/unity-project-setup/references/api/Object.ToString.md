<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Object.ToString.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** The name returned by ToString.

### Description

Returns the name of the object.

```csharp
//This script changes Text to the name of the GameObject with the script attached
//Attach this script to a GameObject
//Attach a Text GameObject in the Inspector (Create>UI>Text)using UnityEngine;
using UnityEngine.UI;public class Example : MonoBehaviour
{
    public Text m_Text;    private void Start()
    {
        //Check that the Text is attached in the Inspector
        if (m_Text != null)
            //Change the Text to show the GameObject's name
            m_Text.text = "GameObject Name : " + gameObject.ToString();
    }
}
```
