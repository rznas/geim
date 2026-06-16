<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Windows.LicenseInformation.PurchaseApp.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**string** Purchase receipt.

### Description

Attempts to purchase the app if it is in installed in trial mode.

Calling this pops up a dialog for the user asking whether they want to buy the application. If the user buys the application, returns a valid purchase receipt string. Otherwise, returns an empty string.

```csharp
using UnityEngine;
using UnityEngine.Windows;class MyMonoBehaviour : MonoBehaviour
{
    string m_Receipt;    void OnGUI()
    {
        if (LicenseInformation.isOnAppTrial)
        {
            if (GUI.Button(new Rect(10, 10, 100, 40), "Buy full version"))
            {
                m_Receipt = LicenseInformation.PurchaseApp();
            }
        }
        else
        {
            GUI.Label(new Rect(10, 10, 100, 40), "You have full application version installed");
        }
    }
}
```
