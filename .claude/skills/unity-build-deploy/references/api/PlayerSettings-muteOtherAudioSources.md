<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PlayerSettings-muteOtherAudioSources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Stops or allows audio from other applications to play in the background while your Unity application is running.

This setting is shared between iOS and Android platforms.
 
 Set this to true and your Unity application stops audio from other applications in the background, set to false and audio from background applications continues to play alongside your Unity application.
 
 Unity ignores `PlayerSettings.muteOtherAudioSources` if at least one of the following is true:

- Unity Audio is disabled. (menu: **Edit** > **Project Settings** > **Audio** > **Disable Unity Audio**)
- Unity has stripped the AudioManager from the project at build time.

AudioManager is stripped from the project if all of the following are true:

- There is no audio content in the project.
- The project uses IL2CPP.
- Strip Engine Code is enabled.

Note: Starting with Android Marshmallow (6.0), setting this to false mutes the sound of your Unity application during an incoming phone call (while the phone is ringing). If you want to have this behavior on older Android versions, you have to add the READ_PHONE_STATE permission to the manifest. See the Android documentation for more information on build manifests.
