<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Device-hideHomeButton.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies whether the home button should be hidden in the iOS build of this application.

On iPhone X the home button is implemented as a system gesture (swipe up from the bottom edge of the screen). The location of this virtual button is indicated by a white bar. If this setting is enabled, the home button is hidden from view whenever the user has not touched the screen for several seconds. Note that iOS Human interface guidelines do not recommend enabling this behavior for applications not containing passive viewing experiences such as viewing a video or a photo slideshow. The initial value of this setting is defined by `PlayerSettings.iOS.hideHomeButton`.
