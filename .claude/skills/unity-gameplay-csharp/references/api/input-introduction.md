<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/input-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to Input

Input in Unity refers to users sending signals from the outside world to your game or app using a physical device.

Unity supports input from many types of device, such as gamepads, mouse, keyboard, touchscreen, joystick, movement-sensors like accelerometers or gyroscopes, and **VR** and **AR** controllers. Almost every project requires input of some kind, whether it is to allow users to navigate a UI, control a character in a game, or move around and interact with objects in **virtual reality**.

Unity has two methods of implementing Input:

- The **Input System Package**, which is newer, more flexible, and better supported.
- The legacy ****Input Manager**** (which includes the built-in `Input` class).

## The Input System Package

By default, the [Input System Package](https://docs.unity3d.com/Packages/com.unity.inputsystem@latest) provides input support in Unity. If needed, you can also install it through the Package Manager.

This is the recommended solution for most projects. It provides an intuitive interface in the Editor to configure input, and provides a variety of workflows to suit your project and coding style.

Get started with the [Input System Package](https://docs.unity3d.com/Packages/com.unity.inputsystem@latest).

## Legacy projects

If you are supporting a project that needs to use the older Input Manager, refer to the legacy Input Manager documentation.

## Additional resources

- [Input System Package](https://docs.unity3d.com/Packages/com.unity.inputsystem@latest)
- Legacy Input Manager
