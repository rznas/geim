<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Accessibility.AssistiveSupport-screenReaderStatusChanged.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Event invoked on the main thread when the user turns the screen reader on or off.

Subscribe to this event to activate your AccessibilityHierarchy (see AssistiveSupport.activeHierarchy) and if you need to customize your application's interface for screen reader users. 

 You can also use AssistiveSupport.isScreenReaderEnabled to determine whether the screen reader is turned on or off. 

 **Platform support**: This event is not supported by Narrator, the Windows built-in screen reader. 


The following example demonstrates a potential workaround for polling the status of Narrator and sending a custom event.

```csharp
using System;
using UnityEngine;
using UnityEngine.Accessibility;namespace UnityEngine.Accessibility.Examples
{
    public class NarratorStatusManager : MonoBehaviour
    {
        // Event invoked when the user turns Narrator on or off.
        public static event Action<bool> narratorStatusChanged;        bool m_IsNarratorEnabled;        // Time interval at which to check Narrator's status.
        float m_CheckInterval = 5.0f;
        float m_TimeSinceLastCheck = 0.0f;        void Start()
        {
            m_IsNarratorEnabled = AssistiveSupport.isScreenReaderEnabled;
        }        void Update()
        {
            if (Application.platform == RuntimePlatform.WindowsPlayer)
            {
                // Poll Narrator's status because it does not send AssistiveSupport.screenReaderStatusChanged events.
                m_TimeSinceLastCheck += Time.deltaTime;                if (m_TimeSinceLastCheck >= m_CheckInterval)
                {
                    bool isScreenReaderEnabled = AssistiveSupport.isScreenReaderEnabled;                    if (m_IsNarratorEnabled != isScreenReaderEnabled)
                    {
                        m_IsNarratorEnabled = isScreenReaderEnabled;                        narratorStatusChanged.Invoke(m_IsNarratorEnabled);
                    }                    m_TimeSinceLastCheck = 0.0f;
                }
            }
        }
    }
}
```
