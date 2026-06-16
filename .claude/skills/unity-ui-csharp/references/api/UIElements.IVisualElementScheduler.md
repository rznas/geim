<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.IVisualElementScheduler.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

A scheduler provides the functionality to queue actions to run at a specific time or duration.

You can use the scheduler to create animations, update the UI, or create tasks that require a delay or repeated action. 

 To schedule an action, use the IVisualElementScheduler.Execute method. The scheduler runs the action at the next frame. 

 A VisualElement associates with the scheduler, which you can access through the VisualElement.schedule property. It returns an IVisualElementScheduledItem interface that provides methods to schedule the action. 

 For example, you can delay running of the action with the IVisualElementScheduledItem.StartingIn method. You can also specify a condition to unschedule the action with the IVisualElementScheduledItem.Until method. 

 To repeat the action at a specified interval, use the IVisualElementScheduledItem.Every method. To remove the scheduler, use the IVisualElementScheduledItem.Pause method. 

 The scheduler is active only when the VisualElement is attached to a panel. Detaching the VisualElement from the panel pauses the scheduler, and reattaching it resumes the scheduler. 

 Additional resources: VisualElement.schedule, VisualElement.panel, IVisualElementScheduledItem

```csharp
// This example uses the scheduler to animate the title logo by changing its background image
 // to the next frame every 200 milliseconds.
 int m_CurrentTitleLogoFrame = 0;
 public List<Texture2D> m_TitleLogoFrames = new List<Texture2D>();
 // Animate title logo.
 var titleLogo = root.Q("menu-title-image");
 titleLogo?.schedule.Execute(() =>
 {
     if (m_TitleLogoFrames.Count == 0)
         return;         m_CurrentTitleLogoFrame = (m_CurrentTitleLogoFrame + 1) % m_TitleLogoFrames.Count;
         var frame = m_TitleLogoFrames[m_CurrentTitleLogoFrame];
         titleLogo.style.backgroundImage = frame;
 }).Every(200);
```

```csharp
// This example uses the scheduler to animate the scaling of a VisualElement.
 IVisualElementScheduledItem m_AnimationScheduler = null; public void DoScale()
 {
 // Scale the VisualElement.
 } m_AnimationScheduler = this.schedule.Execute(DoScale).Every(1).StartingIn(0); // Stop the animation
 m_AnimationScheduler.Pause();
```

### Public Methods

| Method | Description |
| --- | --- |
| Execute | Schedule this action to be executed later. |
