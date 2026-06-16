<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Menu.GetChecked.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the check status of a menu item.

```csharp
using UnityEditor;
    using UnityEngine;    public class CheckMenuTest: MonoBehaviour
    {
        // Add a menu item named "MenuTest" to MyMenu in the main menu.    
        [MenuItem("MyMenu/MenuTest")]
        static void DoSomething()
        {
            Debug.Log("A placeholder menu item.");         
        }
        
        // Add a menu item that you can click to add a check to the "MenuTest" menu item in MyMenu in the main menu. 
        [MenuItem("MyMenu/Check menu item")]
        static void CheckMenu()
        {
            Menu.SetChecked("MyMenu/MenuTest", true);
            Debug.Log("Checked 'MenuTest'");            
        }
        
        // Add a menu item that you can click to clear the check from the "MenuTest" menu item in MyMenu in the main menu. 
        [MenuItem("MyMenu/Clear check from menu")]
        static void ClearCheck()
        {
            Menu.SetChecked("MyMenu/MenuTest", false);
            Debug.Log("Cleared check from menu");
        }        // Add a menu item that you can click to determine if the "MenuTest" in the main menu is checked.
        [MenuItem("MyMenu/Is MenuTest checked?")]
        static void GetChecked()
        {  
        if (Menu.GetChecked("MyMenu/MenuTest"))
        {
            Debug.Log("MenuTest is checked");
        }
            else
        {
            Debug.Log("MenuTest is not checked");
        }    
        }
    }
```
