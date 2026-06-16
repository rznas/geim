<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-oggVorbis.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Load an Ogg Vorbis file into the audio clip.

If the stream has not been downloaded completely, null will be returned. Use isDone or `yield` to see if the data is available.

Additional resources: AudioClip, AudioSource.

```csharp
using UnityEngine;
using System.Collections;[RequireComponent(typeof(AudioSource))]
public class ExampleClass : MonoBehaviour
{
    string path = "http://ia301106.us.archive.org/2/items/abird2005-02-10/abird2005-02-10t02.ogg";    IEnumerator Start()
    {
        // Start downloading
        using (var download = new WWW(path))
        {
            // Wait for download to finish
            yield return download;
            // Create ogg vorbis file
            var clip = download.GetAudioClip();
            // Play it
            if (clip != null)
            {
                GetComponent<AudioSource>().clip = clip;
                GetComponent<AudioSource>().Play();
            }
            else     // Handle error
            {
                Debug.Log("Ogg vorbis download failed. (Incorrect link?)");
            }
        }
    }
}
```
