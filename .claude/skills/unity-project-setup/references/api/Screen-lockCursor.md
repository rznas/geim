<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Screen-lockCursor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable cursor locking

By default, when this property is enabled, the cursor is automatically hidden, centered on view and made to never leave the view.

After the user presses escape or switches to another application the cursor will be automatically unlocked. The cursor lock will also be lost when exiting full screen mode. You can query if the cursor is currently locked by checking the lockCursor state. To provide a good user experience it is recommended to only lock the cursor as a result of pressing a button. Also you should check if the cursor got unlocked, in order to e.g. pause the game or bring up a game menu. In the Editor the cursor will automatically be unlocked when you press escape. In the Standalone Player you have full control over mouse locking thus it won't automatically lose mouse lock unless you switch applications.

```csharp
using UnityEngine;
using UnityEngine.UI;public class Example : MonoBehaviour
{
    Button bt;
    bool wasLocked = false;    void Start()
    {
        bt = GetComponent<Button>();
    }    // Called when the cursor is actually being locked    void DidLockCursor()
    {
        Debug.Log("Locking cursor");        // Disable the button
        bt.enabled = false;
    }    // Called when the cursor is being unlocked
    // or by a script calling Screen.lockCursor = false;
    void DidUnlockCursor()
    {
        Debug.Log("Unlocking cursor");        // Show the button again
        bt.enabled = true;
    }    void OnMouseDown()
    {
        // Lock the cursor
        Screen.lockCursor = true;
    }    void Update()
    {
        // In standalone player we have to provide our own key
        // input for unlocking the cursor
        if (Input.GetKeyDown("escape"))
            Screen.lockCursor = false;        // Did we lose cursor locking?
        // eg. because the user pressed escape
        // or because they switched to another application
        // or because some script set Screen.lockCursor = false;
        if (!Screen.lockCursor && wasLocked)
        {
            wasLocked = false;
            DidUnlockCursor();
        }
        // Did we gain cursor locking?
        else if (Screen.lockCursor && !wasLocked)
        {
            wasLocked = true;
            DidLockCursor();
        }
    }
}
```
