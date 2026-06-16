<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Video.VideoPlayer-waitForFirstFrame.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Determines whether the VideoPlayer will wait for the first frame to be loaded into the texture before starting playback when VideoPlayer.playOnAwake is on.

When set to `true`, drawing into the target will only start once the VideoPlayer preparation is done and the first frame is available in texture memory. Otherwise, the playback will start immediately even if frames are not ready, leading to the first few frames possibly being skipped.

**Note:** Depending on how long the preparation takes and the underlying platform capabilities, catching up with current time after preparation completes may result in many consecutive skips.
