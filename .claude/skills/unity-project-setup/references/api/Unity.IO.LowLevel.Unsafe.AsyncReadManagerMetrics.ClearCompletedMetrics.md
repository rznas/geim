<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.ClearCompletedMetrics.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Clears the metrics for all completed requests, including failed and canceled requests.

You can also clear metrics data when you call GetMetrics or GetCurrentSummaryMetrics by passing in the appropriate AsyncReadManager.Flags. Consider how and when you clear metrics data. You want to avoid collecting duplicate metrics records, but you also want to avoid deleting data you haven’t accessed yet. Avoid calling this function from more than one place in your application. For example, if you had two classes attempting to measure these metrics independently, clearing the data in one class would interfere with the other since all the metrics for completed read requests are removed.
