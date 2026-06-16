<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRMirrorViewBlitMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Engine reserved blit modes. Blit mode capabilities should be queried from XRDisplaySubsystemDescriptor.GetAvailableMirrorBlitModeCount and XRDisplaySubsystemDescriptor.GetMirrorBlitModeByIndex.

### Static Properties

| Property | Description |
| --- | --- |
| Default | Mirror view pass should blit platform default image to the mirror target. |
| Distort | Mirror view pass should blit after distortion pass image to the mirror target. |
| LeftEye | Mirror view pass should blit left eye image to the mirror target. |
| MotionVectors | Mirror view pass should blit left eye image and right eye image in a side-by-side fashion to the mirror target, displaying motion vectors. |
| None | Mirror view pass should not be performed. |
| RightEye | Mirror view pass should blit right eye image to the mirror target. |
| SideBySide | Mirror view pass should blit left eye image and right eye image in a side-by-side fashion to the mirror target. |
| SideBySideOcclusionMesh | Mirror view pass should blit similar to side-by-side mode, but also showing not rendered pixels saved by the occlusion mesh. |
