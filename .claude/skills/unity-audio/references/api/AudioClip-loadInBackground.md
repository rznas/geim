<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip-loadInBackground.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enable this property to load the AudioClip asynchronously in the background instead of on the main thread. Set this property in the Inspector (Read Only).

This property is useful if you have a lot of files or large files to load. If you load them in a separate thread from the main thread, it can help prevent frame rate drops. You can’t change this property during runtime so if you need to set this property, do one of the following before you enter Play mode:

- Enable **Load In Background** in the AudioClip’s Inspector.
- Use AudioImporter.loadInBackground.

```csharp
// This script outputs the load status and the loadInBackground setting for each clip. 
// Attach this script to a GameObject in your Scene. 
// Fill the Audio Clips To Preload array with audio clips. 
// In each audio clip, enable Preload Asset Data in the Inspector. using UnityEngine;
using System.Collections;public class LoadInBackgroundExample : MonoBehaviour
{
    public AudioClip[] audioClipsToLoad;    void Start()
    {
        // Preload audio clips. 
        StartCoroutine(LoadAudioClips());
    }    private IEnumerator LoadAudioClips()
    {
        foreach (AudioClip clip in audioClipsToLoad)
        {
            // Check if the clip is set to load in the background. 
            if (clip.loadInBackground)
            {
                Debug.Log($"Loading {clip.name} in background.");
            }
            else
            {
                Debug.LogWarning($"AudioClip {clip.name} is NOT set to load in the background.");
            }            // Check if the audio clip has finished loading. 
            while (clip.loadState == AudioDataLoadState.Loading)
            {
                Debug.Log($"AudioClip {clip.name} is still loading.");
                yield return null; 
            }
            Debug.Log($"AudioClip {clip.name} is fully loaded.");
        }
        Debug.Log("Loading complete.");
    }
}
```
