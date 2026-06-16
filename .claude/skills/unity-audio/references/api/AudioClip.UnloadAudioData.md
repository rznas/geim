<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioClip.UnloadAudioData.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns `true` if the audio data unloads successfully.

### Description

Unloads the audio data associated with the clip. This works only for AudioClips that are based on actual sound file assets.

This is useful because when you unload the audio data, you free up the memory the audio data uses. You can use this function to optimize memory and not have assets that you aren’t currently using taking up space in memory. If you want to play or process the audio again, you need to use AudioClip.LoadAudioData.

```csharp
// If you click the button, it will load and play the sound you attach to this GameObject.
// If you click the button again, the sound will stop and the audio data will unload. 
// Assign this script to a GameObject and assign a Button and an AudioClip in the Inspector. using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using TMPro;public class AudioUnloadExample : MonoBehaviour
{
    public Button playButton; 
    public AudioClip audioClip;
    TextMeshProUGUI buttonText;
    AudioSource audioSource;    void Awake()
    {
        // Create and attach an AudioSource to the GameObject to play the audio. 
        audioSource = gameObject.AddComponent<AudioSource>();        if (audioClip != null)
        {
            audioSource.clip = audioClip;
            
            if (playButton != null)
            {
                buttonText = playButton.GetComponentInChildren<TextMeshProUGUI>();
                buttonText.text = "Play";                playButton.onClick.AddListener(OnPlayStopButtonClicked);
            }
            else Debug.LogError("Button not assigned in Inspector.");
        }
        else Debug.LogError("AudioClip not assigned in Inspector."); 
    }    void OnPlayStopButtonClicked()
    {
        // Load and play the audio if the audio isn't playing. 
        if(audioSource.isPlaying == false)
        {
            if (!audioClip.preloadAudioData)
            {
                audioClip.LoadAudioData();
            }
            StartCoroutine(CheckLoadAudioClip());
        }
        // Button clicked in Stop state, so if the audio is playing, stop and unload. 
        else
        {
            audioSource.Stop();
            audioClip.UnloadAudioData();
            // Don't want the audio to be playable again, so remove button. 
            playButton.gameObject.SetActive(false);
        }
    }    private IEnumerator CheckLoadAudioClip()
    {
        // Check if the audio clip has finished loading.
        while (audioClip.loadState == AudioDataLoadState.Loading)
        {
            Debug.Log($"AudioClip {audioClip.name} is still loading...");
            yield return null;
        }
        // When the audio loads, play the clip and change the button's text. 
        if (audioClip.loadState == AudioDataLoadState.Loaded)
        {
            Debug.Log($"AudioClip {audioClip.name} is fully loaded.");
            audioSource.Play();
            buttonText.text = "Stop";
        }
    }
}
```
