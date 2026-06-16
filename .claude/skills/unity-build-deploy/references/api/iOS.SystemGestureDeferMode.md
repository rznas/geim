<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.SystemGestureDeferMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Bit-mask used to control the deferring of system gestures on iOS.

On iPhone X the home button is implemented as a system gesture (swipe up from the lower edge of the screen). Other gestures are implemented as swipes from other screen edges. Note, this may interfere with games that use swipes as an interaction method. This bit-mask specifies which screen edge gestures the system defers to the second swipe. If deferring is enabled on a specific screen edge, the first swipe is ignored and provides a way to reduce unwanted interactions with the App. Note that iOS Human interface guidelines do not recommend enabling this behavior as it may confuse users.

### Properties

| Property | Description |
| --- | --- |
| None | Disables gesture deferring on all edges. |
| TopEdge | Identifies top screen edge. |
| LeftEdge | Identifies left screen edge. |
| BottomEdge | Identifies bottom screen edge. |
| RightEdge | Identifies right screen edge. |
| All | Identifies all screen edges. |
