<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IPointerEvent-clickCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Gets the number of consecutive times a down-up sequence was executed in a short amount of time with the same pointer ID and button.

There are two different formulas used to determine the value for clickCount.

 If the event is a ClickEvent, a special data structure tracks click counts for each pointer ID, and will use that click count when initializing the next click event:

- clickCount is incremented on PointerDownEvent. - Time is measured between consecutive PointerDownEvents. - The time limit is 0.5 seconds by default but can vary on some platforms. - clickCount is reset whenever an event with a different pointer ID or button than the previous one is sent. - clickCount is reset on PointerDownEvent if its target is not the same as the previous PointerDownEvent.

 If the event is not a ClickEvent, the value for clickCount does not follow a strict formula, but rather it is determined by the active input framework and platform conventions. The amount of time allowed and whether that time is measured between consecutive PointerDownEvents or between a PointerUpEvent and the next PointerDownEvent varies.

 To remain consistent in your code, don't depend on clickCount for other events than ClickEvent if possible. We recommend keeping track of click counts manually by registering callbacks to PointerDownEvent and PointerUpEvent on the IPanel.visualTree using the TrickleDown.TrickleDown phase to monitor all incoming Panel events. The code below shows an example implementation.

```csharp
using UnityEngine;
using UnityEngine.UIElements;public class ClickCountMonitor
{
    public int ClickCount { get; private set; }    private float doubleClickTime;
    private int lastPointerId = -1;
    private int lastButton;
    private IEventHandler lastTarget;
    private float lastTime;
 
    public ClickCountMonitor(IPanel panel, float doubleClickTime = 0.5f)
    {
        this.doubleClickTime = doubleClickTime;
 
        panel.visualTree.RegisterCallback<PointerDownEvent>(e =>
        {
            CheckResetConditions(e);
            ClickCount++;
        }, TrickleDown.TrickleDown);
 
        panel.visualTree.RegisterCallback<PointerUpEvent>(e =>
        {
            CheckResetConditions(e);
        }, TrickleDown.TrickleDown);
    }
 
    private void CheckResetConditions(IPointerEvent e)
    {
        if (e.pointerId != lastPointerId || e.button != lastButton || ((EventBase)e).target != lastTarget ||
            Time.time >= lastTime + doubleClickTime)
            ClickCount = 0;
        lastPointerId = e.pointerId;
        lastButton = e.button;
        lastTarget = ((EventBase)e).target;
        lastTime = Time.time;
    }
}
```
