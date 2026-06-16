<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SystemInfo-processorModel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the model name of the processor in the user's device (Read Only).

With `SystemInfo.processorModel` and SystemInfo.processorManufacturer values, you can categorize the devices running Unity applications to gather accurate performance metrics. You can use this data to test and optimize your application for improved performance.

Returns `unknown` on WebGL platforms and IOS platforms platforms which don't support this property.

Additional resources: SystemInfo.processorManufacturer

```csharp
using UnityEngine;
using TMPro;
public class NewBehaviourScript : MonoBehaviour
{
    public TMP_Text DisplayText;
    private string _processorModel;    void Start()
    {
        _processorModel = SystemInfo.processorModel;
        DisplayText.text = _processorModel;
    }
}
```
