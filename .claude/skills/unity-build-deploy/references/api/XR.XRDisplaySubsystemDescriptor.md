<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.XRDisplaySubsystemDescriptor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Class providing information about XRDisplaySubsystem registration.

### Properties

| Property | Description |
| --- | --- |
| disablesLegacyVr | Indicates whether legacy VR settings must be disabled for the subsystem. Set to true if the Editor must disable the legacy VR settings disabled; otherwise false. |
| enableBackBufferMSAA | Indicates whether MSAA must be resolved in the back buffer. Set to true if MSAA needs to be resolved in the back buffer; otherwise false. |

### Public Methods

| Method | Description |
| --- | --- |
| GetAvailableMirrorBlitModeCount | Get current display subsystem's total number of supported mirror blit modes. |
| GetMirrorBlitModeByIndex | Get a supported mirror view blit mode from the current display subsystem descriptor. |

### Inherited Members

### Properties

| Property | Description |
| --- | --- |
| id | A unique string that identifies the subsystem that this Descriptor can create. |
