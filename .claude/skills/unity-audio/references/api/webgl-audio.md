<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/webgl-audio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Audio in Web

This page only provides information about audio capabilities in the Web platform. To learn how to use audio in your Unity project, refer to Audio Overview.

Because Unity uses [FMOD](https://www.fmod.com) to manage audio for platforms, the Web platform supports limited audio functionality, which only includes the basic features. FMOD relies on threads, which the **WebGL** API doesn’t support. For this reason, Unity uses an implementation based on the internal Web Audio API, which enables the browser to handle audio playback and mixing.

**Note:** Google Chrome’s new Autoplay policy prevents autoplay of audio and video under certain conditions. For example, while your game might be set to autoplay some background music soon after the game loads, it won’t play automatically unless you click or tap on the website. For more information on how to enable or disable this policy, refer to Google Chrome’s documentation on [Autoplay policy in Chrome](https://developer.chrome.com/blog/autoplay/).

## Supported classes

Unity Web supports the following API classes:

| **Class** | **WebGL Support status** |
| --- | --- |
| **AudioSource** | WebGL supports some APIs. Refer to AudioSource for specific support details. |
| **AudioListener** | All APIs supported. |
| **AudioClip** | WebGL supports some APIs. Refer to AudioClip for specific support details. |
| **AudioMixer** | WebGL supports some APIs. Refer to Audio Mixer for specific support details. |
| **Microphone** | All APIs supported but requires user authorization. Some APIs behave differently. Refer to Microphone for specific support details. |
| **SystemInfo.supportsAudio** | The browser provides audio support for WebGL. For this reason, `SystemInfo.supportsAudio` is always true. |

## AudioSource

The AudioSource API supports basic positional audio playback, including:

- Pausing and resuming
- Rolloff
- Pitch setting
- Doppler effect support

Unity WebGL supports the following AudioSource APIs:

| **Settings** | **Description** |
| --- | --- |
| **Clip** | Determines the **audio clip** that plays next. |
| **dopplerLevel** | Sets the Doppler scale for the AudioSource. |
| **ignoreListenerPause** | Allows AudioSource to ignore `AudioListener.pause` and continue to play audio. |
| **ignoreListenerVolume** | Ignores the end-user’s AudioSource volume. |
| **isPlaying** | Returns true if the `AudioSource.clip` is playing. |
| **loop** | Allows the application to loop the `AudioSource.clip`. |
| **maxDistance** | Sets the maximum distance at which the `AudioSource.clip` stops attenuating or becomes inaudible. |
| **minDistance** | Sets the minimum distance at which the AudioSource.clip no longer rises in volumes. The sound starts to attenuate beyond the minimum distance. |
| **mute** | Mutes the AudioSource. |
| **pitch** | Sets the pitch of the `AudioSource.clip`. WebGL only supports positive pitch values. |
| **playOnAwake** | Plays the AudioSource on Awake. |
| **rolloffMode** | Sets the AudioSource attenuation over distance. |
| **time** | Sets the playback position in seconds. |
| **timeSamples** | Sets the playback position in Pulse-code modulation (PCM) samples. |
| **velocityUpdateMode** | Sets whether the AudioSource updates in the fixed or dynamic update loop. |
| **volume** | Sets the volume of the AudioSource (0.0 to 1.0). |
| **Pause** | Pauses the `AudioSource.clip`. |
| **Play** | Plays the `AudioSource.clip`. |
| **PlayDelayed** | Plays the `AudioSource.clip` with a delay you specify in seconds. |
| **PlayOneShot** | Plays an AudioClip and scales the AudioSource volume by volumeScale. |
| **PlayScheduled** | Plays the AudioSource at a time you specify. |
| **SetScheduledEndTime** | Sets a time that a scheduled `AudioSource.clip` ends. |
| **SetScheduledStartTime** | Sets the time that a scheduled `AudioSource.clip` starts. |
| **Stop** | Stops playing the `AudioSource.clip`. |
| **UnPause** | Unpauses a paused `AudioSource.clip`. |
| **PlayClipAtPoint** | Plays an `AudioSource.clip` at a given position in the worldspace. |

**Note:** Because audio data is decoded in the browser with [`decodeAudioData`](https://webaudio.github.io/web-audio-api/#dom-baseaudiocontext-decodeaudiodata), it is possible that the runtime sampling rate of the audio file is different from the serialized audio data (44100Hz) as the browser will match the `BaseAudioContext` sampling rate, generally aligned with the device audio driver setup. Considering this, we recommend validating the `AudioClip.frequency` value at runtime or using `AudioSource.time` when performing seeking operations.

## AudioClip

Unity WebGL imports AudioClip files in the Advanced Audio Coding (AAC) Format, which is supported by most browsers. Unity WebGL supports the following AudioClip APIs:

| **Properties** | **Description** |
| --- | --- |
| **frequency** | The sample frequency of the clip in Hertz. |
| **length** | The length of the AudioClip in seconds. |
| **loadState** | Returns the current load state of the audio data associated with an AudioClip. |
| **samples** | The length of the AudioClip in samples. |
| **loadType** | The load type of the clip. You can set the AudioClip load type in the **Inspector**. |

| **Method** | **Description** | **Additional information** |
| --- | --- | --- |
| **AudioClip.Create** | Creates an AudioClip with a name and length you specify. | Unity WebGL partially supports `AudioClip.Create`. Browsers don’t support dynamic streaming, so to use `AudioClip.Create`, set the Stream to false. |
| **AudioClip.SetData** | Sets sample data in an AudioSource.clip. | Unity WebGL partially supports `AudioClip.SetData`. You can use this method only on compressed audio files with **Load Type** set to **Decompress on Load**. Refer to Compressed audio. |
| **AudioClip.GetData** | Retrieves an array with sample data from an AudioSource.clip. | Unity WebGL partially supports `AudioClip.GetData`. You can use this method only on compressed audio files with **Load Type** set to **Decompress on Load**. Refer to Compressed audio. |

**Note:** For audio clip support on Linux, make sure you’ve installed the [ffmpeg](https://ffmpeg.org/) package.

### Audio looping issues

When looping an audio clip on a WebGL build, audio might have audible glitches at the loop point. Because AAC is a licensed format, Unity relies on the host platform’s encoder to convert files to AAC. Encoders might alter the first 1024 samples during encoding, which affects the loop start point and causes audible glitches when the sound loops. To address this issue:

1. Use WAV as your source file format.
2. Add at least 1024 samples of silence to the beginning of your WAV file.
3. Edit the WAV’s `smpl` chunk so the loop starts after the added silence.

## Audio Mixer

Unity Web supports some functionality of Audio Mixer assets.

You can do the following with Audio Mixers on Web:

- Create an Audio Mixer asset.
- Add AudioMixerGroups to the hierarchy.
- Adjust the volume of each group. To expose or change the volume with scripting, use AudioMixer.SetFloat.

**Note**: Volume is the only property you can change on Web. Other properties and sound effects aren’t supported.

## Compressed audio

To use compressed audio with WebGL in Unity, set the AudioClip loadType to one of the following options:

- CompressedInMemory
- DecompressOnLoad

You can also change these settings in the Unity Editor. To change the setting, select your Audio Clip, then set **Load Type** in the Inspector window to your preferred option (**Decompress On Load** or **Compressed In Memory**).

| ****Compression** method** | **Description** | **Considerations** |
| --- | --- | --- |
| **CompressedInMemory** | Use this to compress the audio on disk and have it remain compressed after it loads into your application memory. | Compressed audio can cause latency and is less precise when it comes to audio playback. However, compressed audio uses less memory in your application than decompressed audio. It’s best practice to use `CompressedInMemory` for audio that’s unaffected by precision for example, background music. |
| **DecompressOnLoad** | Use this to compress the audio on disk, similar to CompressedInMemory, and decompress when it loads into your application memory. | Decompressed audio uses a significant amount of memory compared to compressed audio but has lower latency and more audio flexibility. Use `DecompressedOnLoad` for audio that’s affected by precision (for example, character dialog or sound effects). |

### Issues with Silent Mode on iOS browsers

The Silent Mode switch on iOS devices behaves differently on compressed and uncompressed audio clips in Web builds. Uncompressed sounds aren’t audible on iOS devices in Silent Mode because WebKit categorizes this audio node type differently than `MediaElementSourceNode`, which is used for `CompressedInMemory` sounds. For more information, refer to [WebKit issue #262781](https://bugs.webkit.org/show_bug.cgi?id=262781).

If you set your audio clip’s `loadType` to `DecompressOnLoad`, the clip will not be audible on iOS devices that are in Silent Mode. To ensure audio plays regardless of Silent Mode, set your audio clip `loadType` to `CompressedInMemory`. This issue occurs only in Web builds.

If you need to load in a sound when a **scene** starts, it’s recommended to load the sound completely in a temporary scene and load the target scene additively.

## Audio playback and browser security

For security reasons, browsers don’t allow audio playback until an end user interacts with your application webpage via a mouse click, touch event, or key press. Use a loading screen to allow the end user to interact with your application and start audio playback before your main content begins.

## Microphone

To use the `Microphone` class on Unity Web, you must do the following:

- Request user authorization with `Application.RequestUserAuthorization`.
- Host your application on a secure (HTTPS) server. 
**Note**: This restriction doesn’t apply during local development when you access the application via `localhost`.

The following example shows how to request user authorization for `Microphone`:

```csharp
using UnityEngine;
using System.Collection;

public class MicrophoneExample : MonoBehaviour
{
  void Start()
  {
    StartCoroutine(RequestMicrophoneAuthorization());
  }

  public IEnumerator RequestMicrophoneAuthorization()
  {
    yield return Application.RequestUserAuthorization(UserAuthorization.Microphone);

    if (Application.HasUserAuthorization(UserAuthorization.Microphone))
    {
      // User gave authorization. The Microphone API can be used now.
      // ...
    } else {
      // User didn't give permission or the Microphone API isn't available, such as
      // when the website isn't running in a secure context. API can't be used.
      // ...
    }
  }
}
```

The following `Microphone` APIs have unique behaviors on the Web platform:

| **Method** | **Description** | **Additional information** |
| --- | --- | --- |
| **Microphone.devices** | A list of available microphone devices, identified by name. | When users deny authorization or when authorization isn’t requested, this list remains empty. When users provide authorization, the list automatically updates when new audio input devices connect or disconnect. |
| **Microphone.GetDeviceCaps** | Gets the frequency capabilities of a device. | Only some browsers report the capabilities of microphones. The system reports reasonable default values if browser support is missing. |

While the microphone is recording to `AudioClip`, the following methods behave differently:

| **Method** | **Description** | **Additional information** |
| --- | --- | --- |
| **AudioSource.Play** | Plays the `AudioSource.clip`. | Plays a live stream from the microphone while recording is active. Otherwise, it plays the recorded clip. |
| **AudioSource.pitch** | Sets the pitch of the `AudioSource.clip`. | Has no effect while recording is active. |
| **AudioSource.time** | Sets the playback position in seconds. | Has no effect when recording is active. |
| **AudioSource.timeSamples** | Sets the playback position in pulse-code modulation (PCM) samples. | Has no effect when recording is active. |
| **AudioClip.GetData** | Fills an array with sample data from the audio clip. | Fails if called when recording is active. After recording stops, the data loads asynchronously. Use `AudioClip.loadState` to check when the data is available. |
| **AudioClip.SetData** | Sets sample data in an `AudioSource.clip`. | Can’t be used while recording is active. |

## Scriptable Audio Pipeline

The scriptable audio pipeline is not supported. Attempting to use it in a Web build will trigger a warning.
