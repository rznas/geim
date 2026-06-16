<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/iphone-bugreporting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Report crash bugs for iOS

You can report crash bugs for iOS with Unity [Bug Reporting](https://unity.com/releases/editor/qa/bug-reporting). If your application crashes in the Xcode debugger, it’s recommended to add the Xcode console output to your bug report. Use the following steps to access the console output if your application crashes:

**Note**: Before submitting a [bug report](https://unity.com/releases/editor/qa/bug-reporting), refer to Troubleshooting on iOS devices where you will find solutions to common crashes and other problems.

1. From the **Debug** menu , select **Continue** twice.
2. Open the debugger console from **View** > **Debug Area** > **Activate Console**.
3. In the console, type `thread backtrace all` and press **Enter**.
4. Copy the console output and attach it to your bug report.

When reporting any application freezes, you can click **Pause** and repeat the previous steps.

If your application crashes on the iOS device, it’s recommended to retrieve the crash report. To achieve this, refer to Acquiring Crash and Low Memory Reports (Apple Developer). Attach the crash report, your built application, and the console log to your bug report.

## Additional resources

- Troubleshooting on iOS devices
- [Bug reporting](https://unity.com/releases/editor/qa/bug-reporting)
