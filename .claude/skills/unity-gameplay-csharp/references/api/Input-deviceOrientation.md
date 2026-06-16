<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Input-deviceOrientation.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Device physical orientation as reported by OS. (Read Only)

**Note**: This API is part of the legacy Input Manager. The recommended best practice is that you don't use this API in new projects. For new projects, use the Input System package. To learn more about input, refer to Input.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void Update()
    {
        if (Input.deviceOrientation == DeviceOrientation.FaceDown)
            audioSource.Play();
    }
}
```
