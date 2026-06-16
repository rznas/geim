<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Gyroscope-rotationRate.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns rotation rate as measured by the device's gyroscope.

The rotation rate is given as a Vector3 representing the speed of rotation around each of the three axes in radians per second. This is the value as it is reported by the gyroscope hardware - a more accurate measurement that has been processed to remove "bias" can be obtained with the rotationRateUnbiased property.

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
        if (Input.gyro.rotationRate.y > shakeSpeed && !audioSource.isPlaying)
            audioSource.PlayOneShot(shakeSound);
    }
}
```
