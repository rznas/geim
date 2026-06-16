<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/XR.CommonUsages.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Defines static variables that are used to retrieve input features from XR.InputDevice.TryGetFeatureValue.

Use these static variables to retrieve common feature values by usage for an XR.InputDevice.

### Static Properties

| Property | Description |
| --- | --- |
| batteryLevel | Value representing the current battery life of this device. |
| centerEyeAcceleration | The acceleration of the center eye on this device. |
| centerEyeAngularAcceleration | The angular acceleration of the center eye on this device, formatted as euler angles. |
| centerEyeAngularVelocity | The angular velocity of the center eye on this device, formatted as euler angles. |
| centerEyePosition | The position of the center eye on this device. |
| centerEyeRotation | The rotation of the center eye on this device. |
| centerEyeVelocity | The velocity of the center eye on this device. |
| colorCameraAcceleration | The acceleration of the color camera on this device. |
| colorCameraAngularAcceleration | The angular acceleration of the color camera on this device, formatted as euler angles. |
| colorCameraAngularVelocity | The angular velocity of the color camera on this device, formatted as euler angles. |
| colorCameraPosition | The position of the color camera on this device. |
| colorCameraRotation | The rotation of the color camera on this device. |
| colorCameraVelocity | The velocity of the color camera on this device. |
| deviceAcceleration | The acceleration of the device. |
| deviceAngularAcceleration | The angular acceleration of this device, formatted as euler angles. |
| deviceAngularVelocity | The angular velocity of this device, formatted as euler angles. |
| devicePosition | The position of the device. |
| deviceRotation | The rotation of this device. |
| deviceVelocity | The velocity of the device. |
| eyesData | An Eyes struct containing eye tracking data collected from the device. |
| grip | Represents the users grip on the controller. |
| gripButton | A binary measure of whether the device is being gripped. |
| handData | Value representing the hand data for this device. |
| isTracked | Informs to the developer whether the device is currently being tracked. |
| leftEyeAcceleration | The acceleration of the left eye on this device. |
| leftEyeAngularAcceleration | The angular acceleration of the left eye on this device, formatted as euler angles. |
| leftEyeAngularVelocity | The angular velocity of the left eye on this device, formatted as euler angles. |
| leftEyePosition | The position of the left eye on this device. |
| leftEyeRotation | The rotation of the left eye on this device. |
| leftEyeVelocity | The velocity of the left eye on this device. |
| menuButton | Represents a menu button, used to pause, go back, or otherwise exit gameplay. |
| primary2DAxis | The primary touchpad or joystick on a device. |
| primary2DAxisClick | Represents the primary 2D axis being clicked or otherwise depressed. |
| primary2DAxisTouch | Represents the primary 2D axis being touched. |
| primaryButton | The primary face button being pressed on a device, or sole button if only one is available. |
| primaryTouch | The primary face button being touched on a device. |
| rightEyeAcceleration | The acceleration of the right eye on this device. |
| rightEyeAngularAcceleration | The angular acceleration of the right eye on this device, formatted as euler angles. |
| rightEyeAngularVelocity | The angular velocity of the right eye on this device, formatted as euler angles. |
| rightEyePosition | The position of the right eye on this device. |
| rightEyeRotation | The rotation of the right eye on this device. |
| rightEyeVelocity | The velocity of the right eye on this device. |
| secondary2DAxis | A secondary touchpad or joystick on a device. |
| secondary2DAxisClick | Represents the secondary 2D axis being clicked or otherwise depressed. |
| secondary2DAxisTouch | Represents the secondary 2D axis being touched. |
| secondaryButton | The secondary face button being pressed on a device. |
| secondaryTouch | The secondary face button being touched on a device. |
| trackingState | Represents the values being tracked for this device. |
| trigger | A trigger-like control, pressed with the index finger. |
| triggerButton | A binary measure of whether the index finger is activating the trigger. |
| userPresence | Use this property to test whether the user is currently wearing and/or interacting with the XR device. The exact behavior of this property varies with each type of device: some devices have a sensor specifically to detect user proximity, however you can reasonably infer that a user is present with the device when the property is UserPresenceState.Present. |
