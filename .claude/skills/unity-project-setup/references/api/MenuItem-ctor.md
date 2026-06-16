<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/MenuItem-ctor.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| itemName | The `itemName` is the menu item represented like a pathname. For example, the menu item could be `"GameObject/Do Something"`. |
| isValidateFunction | If `isValidateFunction` is true, this is a validation function and is called before the menu function with the same `itemName` is invoked. |
| priority | The order to display the menu item in a menu. If a menu item has a priority value that is 10 or greater than the item that precedes it, a separator line divides the two menu items from each other in the menu. |

### Description

Creates a menu item and invokes the static function that follows it when the menu item is selected.

`MenuItem` is an attribute that precedes a script function. This makes the function appear in the Unity menu system. The menu location is specified by the `itemName` argument.

 `isValidateFunction` is used to make a `MenuItem` function as one is executed before a script function with the same `itemName` argument. The second argument is boolean. If this argument is set to `true`, it marks the associated function to be called before the execution of the second script function. This second script function with the same `itemName` executes next.

**Warning:** `priority` is only considered in the execution function when `isValidateFunction` is set to false. When `isValidateFunction` is set to true to mark a validation function, `priority` is not used.

 `priority` determines how the following script function is ordered in the menu system. The integer value is compared against values on other script functions. Parent menus derive their priority value from their first defined submenu. If the integer value is greater than the other values, then the `MenuItem` script function is placed at the bottom of the list. The value of `priority` can also be used to manage the list of script functions into groups. The example later in this page demonstrates more about this feature.

 The following example code adds three menu items with corresponding functions to a menu called "Example": `Example2` (priority 100), `Example1` (priority 101), and then `Example3` (priority 112). In the menu, a separator line divides `Example3` from the other two menu items because the priority value of `Example3` is 10+ greater than `Example1`.

```csharp
// Add menu item Example1 into a new menu called Example.
[MenuItem("Example/Example1", false, 101)]
public static void Example1()
{
    Debug.Log("Example/Example1");
}

// Add Example2 to the Example menu. Example2 has a priority lower than Example1, so it is added before Example1 in the menu.
[MenuItem("Example/Example2", false, 100)]
public static void Example2()
{
    Debug.Log("Example/Example2");
}

// Example3 has a priority of 112, which is 11 more than Example1.
// This creates a divider between the two in the menu.
[MenuItem("Example/Example3", false, 112)]
public static void Example3()
{
    Debug.Log("Example/Example3");
}
```

The following example includes validation functions. Do not use the `priority` parameter on the attribute of the validation function.

```csharp
// The Example/SelectionCount menu item is enabled only when you select at least one object.
[MenuItem("Example/SelectionCount", true)]
public static bool SelectionCountValidation()
{
    return Selection.count > 0;
}

// The actual function that is called if the active menu item is selected.
[MenuItem("Example/SelectionCount", false, 200)]
public static void SelectionCountAction()
{
    Debug.Log($"The selection contains {Selection.count} element(s)");
}
```
