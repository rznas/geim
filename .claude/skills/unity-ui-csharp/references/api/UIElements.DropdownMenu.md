<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.DropdownMenu.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Represents a dropdown menu, similar to the menus seen in most Operating Systems (OS) and across the Unity Editor.

Use this class to set custom DropdownMenuItem that executes a DropdownMenuAction based on its status.

 Use this class to create OS-like dropdown menus in the Unity Editor. For more generic dropdown menus designed for both Editor and Runtime use, use GenericDropdownMenu. 

The following example shows how to create a dropdown menu with submenus and conditional actions.

```csharp
using UnityEditor;
using UnityEngine;
using UnityEngine.UIElements;
public class DropdownMenuExample: EditorWindow
{
    public string[] playerNames = new string[] { "Alex", "Carol", "Ethan", "Jen" };    [MenuItem("Window/UI Toolkit/DropdownMenu Example")]
    public static void ShowExample()
    {
        DropdownMenuExample wnd = GetWindow<DropdownMenuExample>();
        wnd.titleContent = new GUIContent("DropdownMenu Example");
    }    public void CreateGUI()
    {
        var window = EditorWindow.GetWindow<EditorWindow>();
        var root = window.rootVisualElement;        // Create a new dropdown menu
        var playersContainer = new VisualElement();
        var instructionLabel = new Label("Right Click on the player to edit their details");
        root.Add(instructionLabel);
        root.Add(playersContainer);
        
        for(int i = 0; i < playerNames.Length; i++)
        {
            var playerName = playerNames[i];
            // Set an ID for each player label
            var id = i+1;
            var playerLabel = new Label { text = playerName, name = $"label{playerName}"};
            playerLabel.AddManipulator(CreateDropdownMenu());
            playersContainer.Add(playerLabel);
        }
    }    public IManipulator CreateDropdownMenu()
    {
       ContextualMenuManipulator menuManipulator = new ContextualMenuManipulator(
           menuEvent =>
           {
               if (menuEvent.target is not Label playerLabel)
                     return;               // Player Name Actions
               menuEvent.menu.AppendAction("Retire Player", a =>
               {
                   playerLabel.text = $"[RETIRED] {playerLabel.text}";
                   playerLabel.style.backgroundColor = Color.gray;
                   playerLabel.style.color = Color.red;
                   playerLabel.userData = "retired";
               }, DropdownMenuAction.AlwaysEnabled, playerLabel.userData);               menuEvent.menu.AppendAction("Set Player To Gold Status", a =>
               {
                   playerLabel.style.color = Color.yellow;
               });               // Separate Team Actions from Player Name Actions
               menuEvent.menu.AppendSeparator();               // Create a sub menu containing both teams
               menuEvent.menu.AppendAction("Change Team/Lizards", a =>
               {
                   playerLabel.style.backgroundColor = Color.green;
               }, ChangeTeamActionStatus, playerLabel.userData);
               menuEvent.menu.AppendAction("Change Team/Sharks", a =>
               {
                   playerLabel.style.backgroundColor = Color.cyan;
               }, ChangeTeamActionStatus, playerLabel.userData);
           });
       return menuManipulator;
    }    public DropdownMenuAction.Status ChangeTeamActionStatus(DropdownMenuAction a)
    {
        // If a player is retired, hide the team change options
        return a.userData is string and "retired" ? DropdownMenuAction.Status.Hidden : DropdownMenuAction.Status.Normal;
    }
}
```

### Properties

| Property | Description |
| --- | --- |
| allowDuplicateNames | Determines whether the menu allows duplicate names. |

### Public Methods

| Method | Description |
| --- | --- |
| AppendAction | Adds an item that executes an action in the dropdown menu. |
| AppendSeparator | Adds a separator line in the menu. |
| ClearItems | Clears all items from the menu. |
| InsertAction | Adds an item that executes an action in the dropdown menu. |
| InsertSeparator | Adds a separator line in the menu. |
| MenuItems | Gets the list of menu items. |
| PrepareForDisplay | Gets the status of all items by calling their status callback and removes the excess separators. |
| RemoveItemAt | Removes the menu item at index. |
