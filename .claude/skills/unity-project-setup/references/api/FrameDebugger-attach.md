<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/FrameDebugger-attach.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Attach the Frame Debugger to a built project

You can change the Frame Debugger’s target process to attach the Frame Debugger to a built Unity Player. To be compatible with the Frame Debugger, the Unity Player must:

- Use the ****Development Build**** Build Setting.
- Support multithreaded rendering. Every Unity platform except Web supports this.
- For desktop platforms, use the **Run In Background** Player Setting. Otherwise, when you focus the Frame Debugger window in the Unity Editor, the Unity Player loses focus and doesn’t reflect any rendering changes.

If the Unity Player fulfills the above requirements, when you next debug a frame, you can attach the Frame Debugger to the Unity Player.
