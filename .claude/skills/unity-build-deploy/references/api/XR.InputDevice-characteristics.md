<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.InputDevice-characteristics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Read Only. A bitmask of enumerated flags describing the characteristics of this InputDevice.

Use **Characteristics** to determine whether an **InputDevice** has specific features or capabilities. For example, if the set of InputDeviceCharacteristics includes both InputDeviceCharacteristics.HeldInHand and InputDeviceCharacteristics.Left, then the device provides tracking data for the left hand.

**Characteristics** is a bitmask. Use the bitwise operators to test for specific flags. For example, to determine whether an **InputDevice** has a camera, use the conditional:

`(inputDevice.characteristics & InputDeviceCharacteristics.Camera) == InputDeviceCharacteristics.Camera`.
