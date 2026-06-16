<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/xr-android-xr-build-profile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Android XR build profile

Understand how to configure the Android XR build profile.

Unity supports development for headsets running Android XR. In Unity 6.1 and later, you can use the Android XR build profile in the Build Profiles window.

The following sections outline Unity’s resources and packages to develop for Android XR devices.

## Prerequisites

- Android Build Support module for the version of the Editor you’re using.

## Android XR build profile

By default, the Android XR platform shares Player settings with the Android build platform. You can use the Android XR build profile to override project settings specifically for Android XR.

### Create the Android XR build profile

Create the **Android XR** build profile in the **Build Profiles** window, as outlined in Create and manage build profiles.

### Customize build profile settings

In the **Android XR Build Profile** tab, you can configure the following settings:

- **Platform Settings**: customizable build settings specific for the Android XR platform. These settings aren’t shared by the Android build platform. Refer to Android build platform for details on these options.
- **Player Settings**, **Graphics Settings**, and **Quality Settings**: shared with the Android build platform by default. You can customize and override these settings for the Android XR platform. To override these settings, select the relevant override option from the **Player Settings Overrides** section to reveal the override options. Refer to Overrride settings with build profiles to learn more.

### Android XR platform settings

- The Android XR build profile adds a new **Android XR (Build Profile)** Quality level (**Project Settings** > **Quality Settings**). You can modify the quality settings.
- When you first swap to the Android XR build profile, Unity enables Android XR features and Foveated Rendering. These features remain enabled for the Android XR build profile when you swap to a different build target.

## Additional resources

- XR Plug-in Management settings
- Optimize for untethered XR devices
