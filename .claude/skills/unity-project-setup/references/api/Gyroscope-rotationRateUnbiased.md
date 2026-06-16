<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-rotationRateUnbiased.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns unbiased rotation rate as measured by the device's gyroscope.

The rotation rate is given as a Vector3 representing the speed of rotation around each of the three axes in radians per second. This value has been processed to remove "bias" and give a more accurate measurement. The raw value reported by the gyroscope hardware can be obtained with the rotationRate property.

```csharp
using UnityEngine;
using System.Collections;public class ExampleClass : MonoBehaviour
{
    public float shakeSpeed;
    public AudioClip shakeSound;
    AudioSource audioSource;    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }    void Update()
    {
        if (Input.gyro.rotationRateUnbiased.y > shakeSpeed && !audioSource.isPlaying)
            audioSource.PlayOneShot(shakeSound);
    }
}
```
