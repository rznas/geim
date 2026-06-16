<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/configurable-enter-play-mode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Configuring how Unity enters Play mode

The ability to test your application by switching from Edit mode to Play mode is one of Unity’s core features. You can use Play mode to run your project directly inside the Editor, through the **Play** button in the Toolbar.

Play mode is intended to provide a realistic preview of how your application is likely to behave for users. By default Unity performs two significant actions on entering Play mode to ensure your project starts and runs as it would in a build:

- It reloads the scripting domain to reset the application state. For more information on the implications of disabling domain reload and how to compensate for it in your code, refer to Enter Play mode with domain reload disabled.
- It reloads the **scene**. For more information on the implications of disabling scene reload and how to compensate for it in your code, refer to Enter Play mode with scene reload disabled.

These two actions take time to perform, and the amount of time increases as your **scripts** and scenes become more complex. When you frequently make and preview changes, the cumulative time spent waiting to enter Play mode can significantly slow down your development process.

To prioritize faster development iteration times over accuracy of the Play mode simulation, Unity offers the ability to disable domain reload and scene reload on entering Play mode.

The following diagram provides a high-level overview of the effects of disabling domain reload and scene reload:

For more detailed information on the effects of disabling domain and scene reload, refer to Details of disabling domain and scene reload.

## Configure Play mode settings

You can configure what processes start when you enter Play mode in **Enter Play Mode Settings** in the Editor section of the Project Settings window. To disable domain reload and/or scene reload on enter Play mode:

1. Open the Project Settings window (**Edit** > **Project Settings**).
2. Click on the Editor tab.
3. In the **Enter Play Mode Settings** section, in the **When entering Play Mode** dropdown menu, do one of the following:
  - To disable domain reloading but enable scene reloading, select **Reload Scene only**.
  - To disable scene reloading but enable domain reloading, select **Reload Domain only**.
  - To disable both domain reloading and scene reloading, select **Do not reload Domain or Scene**.

## Additional resources

- Project Settings window
- Editor Project Settings
- Toolbar
- Enter Play mode with domain reload disabled
- Enter Play mode with scene reload disabled
