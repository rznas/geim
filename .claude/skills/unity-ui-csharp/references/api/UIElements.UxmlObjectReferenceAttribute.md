<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.UxmlObjectReferenceAttribute.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Declares that a field or property is associated with nested UXML objects.

You can utilize the UxmlObjectReferenceAttribute to indicate that a property or field is linked to one or multiple UXML objects. By adding the UxmlObjectAttribute attribute to a class, you can declare a UXML object. You can use these UXML objects to associate complex data with a field, surpassing the capabilities of a single UxmlAttributeAttribute. The field type must be a UXML object or an interface. When using an interface, only UXML Object types are valid for UXML serialization. 

The following example shows a common use case for the UxmlObjectReferenceAttribute. It uses the attribute to associate a list of UXML objects with a field or property:

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;[UxmlObject]
public partial class Option
{
    [UxmlAttribute]
    public string name { get; set; }    [UxmlAttribute]
    public bool bold { get; set; }    [UxmlAttribute]
    public Color color;
}[UxmlElement]
public partial class MyColoredListField : VisualElement
{
    private List<Option> m_Options;
    private PopupField<Option> m_PopupField;    [UxmlObjectReference("options")]
    public List<Option> options
    {
        get => m_Options;
        set
        {
            m_Options = value;
            m_PopupField.choices = m_Options;
        }
    }    public MyColoredListField()
    {
        m_PopupField = new PopupField<Option>();
        Add(m_PopupField);        if (options != null)
            m_PopupField.choices = options;        m_PopupField.formatSelectedValueCallback = FormatItem;
        m_PopupField.formatListItemCallback = FormatItem;
    }    static string FormatItem(Option option)
    {
        if (option == null)
            return "";        var coloredString = $"<color=#{ColorUtility.ToHtmlStringRGB(option.color)}>{option.name}</color>";        if (option.bold)
            return $"<b>{coloredString}</b>";
        return coloredString;
    }
}
```

Example UXML:

```csharp
<ui:UXML xmlns:ui="UnityEngine.UIElements">
    <MyColoredListField>
        <options>
            <Option name="Red" color="#FF0000FF" bold="true" />
            <Option name="Green" color="#00FF00FF" />
            <Option name="Blue" color="#0000FFFF" />
        </options>
    </MyColoredListField>
</ui:UXML>
```

You can employ a base type and incorporate derived types as UXML objects. The following example customizes a button to exhibit different behaviors when clicked, such as displaying a label or playing a sound effect.

```csharp
using UnityEngine;
using UnityEngine.UIElements;[UxmlObject]
public abstract partial class ButtonBehaviour
{
    [UxmlAttribute]
    public string name { get; set; }    public abstract void OnClicked(Button button);
}[UxmlObject]
public partial class CreateLabel : ButtonBehaviour
{
    [UxmlAttribute]
    public string text { get; set; } = "I was clicked!";    public override void OnClicked(Button button)
    {
        var label = new Label(text);
        button.parent.Add(label);
    }
}[UxmlObject]
public partial class PlaySound : ButtonBehaviour
{
    [UxmlAttribute]
    public AudioClip sound { get; set; }    public override void OnClicked(Button button)
    {
        AudioSource.PlayClipAtPoint(sound, Vector3.zero);
    }
}[UxmlElement]
public partial class ButtonWithClickBehaviourExample : Button
{
    [UxmlObjectReference("clicked")]
    public ButtonBehaviour clickedBehaviour { get; set; }    public ButtonWithClickBehaviourExample()
    {
        clicked += OnClick;
    }    void OnClick()
    {
        clickedBehaviour?.OnClicked(this);
    }
}
```

Example UXML:

```csharp
<ui:UXML xmlns:ui="UnityEngine.UIElements" xmlns:uie="UnityEditor.UIElements" editor-extension-mode="False">
    <ButtonWithClickBehaviourExample text="Play Sound">
        <clicked>
            <PlaySound sound="project://database/Assets/ClickedSound.wav" />
        </clicked>
    </ButtonWithClickBehaviourExample>
    <ButtonWithClickBehaviourExample text="Show Label">
        <clicked>
            <CreateLabel text="I was clicked!" />
        </clicked>
    </ButtonWithClickBehaviourExample>
</ui:UXML>
```

You can also use an interface with UXML objects that implement it.

```csharp
using System.Collections.Generic;
using UnityEngine.UIElements;public interface IMyUxmlObjectInterface
{
    string name { get; set; }
}[UxmlObject]
public partial class MyUxmlObject : IMyUxmlObjectInterface
{
    [UxmlAttribute]
    public string name { get; set; }
}[UxmlElement]
public partial class MyUxmlObjectElement : VisualElement
{
    [UxmlObjectReference("item")]
    public IMyUxmlObjectInterface item { get; set; }    [UxmlObjectReference("item-list")]
    public List<IMyUxmlObjectInterface> itemList { get; set; }   
}
```

The following example creates multiple UxmlObjects types with custom property drawers. It uses UxmlObjects to describe schools, teachers, and students:

```csharp
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;/// <summary>
/// The classes that a student can take.
/// </summary>
public enum Class
{
    Maths,
    MathsAdvanced,
    Science,
    ScienceAdvanced,
    Psychology,
    Sociology,
    Economics,
    English,
    French,
    History,
}/// <summary>
/// The base class contains the common properties for both students and teachers.
/// </summary>
[UxmlObject]
public abstract partial class Person
{
    [UxmlAttribute]
    public int Id { get; set; }    [UxmlAttribute]
    public string Name { get; set; }
}/// <summary>
/// A student has a list of classes and a photo.
/// </summary>
[UxmlObject]
public partial class Student : Person
{
    [UxmlAttribute]
    public List<Class> Classes { get; set; }    [UxmlAttribute]
    public Texture2D Photo { get; set; }
}/// <summary>
/// A teacher has a list of classes taught.
/// </summary>
[UxmlObject]
public partial class Teacher : Person
{
    [UxmlAttribute]
    public List<Class> ClassesTaught { get; set; }
}/// <summary>
/// A school has a list of people which includes both students and teachers.
/// </summary>
[UxmlObject]
public partial class School
{
    [UxmlAttribute]
    public string Name { get; set; }    [UxmlAttribute]
    public int NextAvailableId;    [UxmlObjectReference("people")]
    public List<Person> People { get; set; }
}/// <summary>
/// A school district has a list of schools.
/// </summary>
[UxmlElement]
public partial class SchoolDistrict : VisualElement
{
    [UxmlObjectReference("schools")]
    public List<School> Schools { get; set; }
}
```

You can use a custom property drawer to display the UXML objects in the Inspector. The property drawer must be for the UxmlObject's UxmlSerializedData type. For example, to create a property drawer for the UxmlObject Student, the drawer must be for the type Studen.UxmlSerializedData.

```csharp
using UnityEditor;
using UnityEditor.UIElements;
using UnityEngine;
using UnityEngine.UIElements;// Note: The custom property drawer must be for the serialized data type.
[CustomPropertyDrawer(typeof(School.UxmlSerializedData))]
public class SchoolPropertyDrawer : PropertyDrawer
{
    SerializedProperty m_People;
    SerializedProperty m_NextAvailableId;
    ListView m_ListView;    int GetNextId()
    {
        var id = m_NextAvailableId.intValue;
        if (id == 0)
            id++;        m_NextAvailableId.intValue = id + 1;
        return id;
    }    public override VisualElement CreatePropertyGUI(SerializedProperty property)
    {
        var root = new VisualElement();        m_People = property.FindPropertyRelative("People");
        m_NextAvailableId = property.FindPropertyRelative("NextAvailableId");        var name = new PropertyField();
        name.BindProperty(property.FindPropertyRelative("Name"));
        root.Add(name);        m_ListView = new ListView
        {
            showAddRemoveFooter = true,
            showBorder = true,
            showBoundCollectionSize = false,
            showAlternatingRowBackgrounds = AlternatingRowBackground.All,
            overridingAddButtonBehavior = OnAddItem,
            reorderable = true,
            reorderMode = ListViewReorderMode.Animated,
            virtualizationMethod = CollectionVirtualizationMethod.DynamicHeight,
            bindingPath = m_People.propertyPath,
        };        root.Add(m_ListView);        return root;
    }    void OnAddItem(BaseListView baseListView, Button button)
    {
        var menu = new GenericMenu();
        menu.AddItem(new GUIContent("Student"), false, () => AddItem<Student>());
        menu.AddItem(new GUIContent("Teacher"), false, () => AddItem<Teacher>());
        menu.DropDown(button.worldBound);
    }
    void AddItem<T>() where T : new()
    {
        m_People.InsertArrayElementAtIndex(m_People.arraySize);
        var person = m_People.GetArrayElementAtIndex(m_People.arraySize - 1);
        person.managedReferenceValue = UxmlSerializedDataCreator.CreateUxmlSerializedData(typeof(T));
        person.FindPropertyRelative("Id").intValue = GetNextId();
        m_People.serializedObject.ApplyModifiedProperties();
        m_ListView.RefreshItem(m_People.arraySize - 1);
    }
}[CustomPropertyDrawer(typeof(Student.UxmlSerializedData))]
public class StudentPropertyDrawer : PropertyDrawer
{
    public override VisualElement CreatePropertyGUI(SerializedProperty property)
    {
        var id = property.FindPropertyRelative("Id").intValue;
        var photo = property.FindPropertyRelative("Photo").objectReferenceValue as Texture2D;        var root = new VisualElement { style = { backgroundColor = new Color(0, 0.2f, 0, 0.25f) } };
        root.Add(new Label($"Student({id})") { style = { unityTextAlign = TextAnchor.MiddleCenter } });
        var image = new Image { image = photo, style = { height = 100, width = 100 } };
        root.Add(image);        var name = new PropertyField();
        name.BindProperty(property.FindPropertyRelative("Name"));
        root.Add(name);        var photoField = new PropertyField();
        photoField.BindProperty(property.FindPropertyRelative("Photo"));
        photoField.RegisterValueChangeCallback(evt =>
        {
            image.image = property.FindPropertyRelative("Photo").objectReferenceValue as Texture2D;
        });
        root.Add(photoField);        var course = new PropertyField();
        course.BindProperty(property.FindPropertyRelative("Classes"));
        root.Add(course);        return root;
    }
}[CustomPropertyDrawer(typeof(Teacher.UxmlSerializedData))]
public class TeacherPropertyDrawer : StudentPropertyDrawer
{
    public override VisualElement CreatePropertyGUI(SerializedProperty property)
    {
        var id = property.FindPropertyRelative("Id").intValue;
        var root = new VisualElement { style = { backgroundColor = new Color(0, 0, 0.2f, 0.25f) } };
        root.Add(new Label($"Teacher({id})") {  style = {unityTextAlign = TextAnchor.MiddleCenter }});        var name = new PropertyField();
        name.BindProperty(property.FindPropertyRelative("Name"));
        root.Add(name);        var classField = new PropertyField();
        classField.BindProperty(property.FindPropertyRelative("ClassesTaught"));
        root.Add(classField);        return root;
    }
}
```

Example UXML:

```csharp
<ui:UXML xmlns:ui="UnityEngine.UIElements" xmlns:uie="UnityEditor.UIElements" editor-extension-mode="False">
    <SchoolDistrict>
        <schools>
            <School name="Herrington High School" next-available-id="6">
                <people>
                    <Teacher id="1" classes-taught="Science" name="Elizabeth Burke" />
                    <Teacher id="2" classes-taught="Maths" name="Coach Willis" />
                    <Student id="3" classes="Maths" name="Casey Connor" />
                    <Student id="4" classes="Maths,English,French,History,Sociology" name="Delilah Profitt" />
                    <Student id="5" classes="Maths,MathsAdvanced,Science,ScienceAdvanced" name=" Marybeth Louise Hutchinson" />
                </people>
            </School>        
            <School name="Shermer High School" next-available-id="9">
                <people>
                    <Teacher id="3" classes-taught="English" name="Ed Rooney" />
                    <Teacher id="4" name="Mr. Lorensax" classes-taught="Economics" />
                    <Teacher id="5" classes-taught="English" name="Mr. Knowlan" />
                    <Teacher id="6" classes-taught="History" name="Mr. Rickets" />
                    <Student id="1" classes="Maths,Science,English" name="Ferris Bueller" />
                    <Student id="7" classes="Maths,MathsAdvanced,Science,ScienceAdvanced,French" name="Cameron Frye" />
                    <Student id="8" classes="Sociology,Economics,Phycology" name="Sloan Peterson" />
                </people>
            </School>
            <School name="Sunnydale High School" next-available-id="6">
                <people>
                    <Teacher id="1" classes-taught="Science,ScienceAdvanced" name="Grace Newman" />
                    <Teacher id="2" classes-taught="Science" name="Dr. Gregory" />
                    <Student id="3" classes="Maths" name=" James Stanley" photo="project://database/Assets/james-class-photo.jpg" />
                    <Student id="4" classes="Maths,English,French,History,Sociology" name="Buffy Summers" photo="project://database/Assets/buffy-class-photo.jpg" />
                    <Student id="5" classes="Maths,MathsAdvanced,Science,ScienceAdvanced" name="Willow Rosenberg" photo="project://database/Assets/willow-class-photo.jpg" />
                </people>
            </School>
        </schools>
    </SchoolDistrict>
</ui:UXML>
```

### Properties

| Property | Description |
| --- | --- |
| name | The name of the nested UXML element that the UXML Objects are serialized to. Note: A null or empty value will result in the objects being serialized into the root. |
| types | In UI Builder, when adding a UXML Object to a field that has multiple derived types, a dropdown list appears with a selection of available types that can be added to the field. By default, this list comprises all types that inherit from the UXML object type. You can use a parameter to specify a list of accepted types to be displayed, rather than showing all available types |

### Constructors

| Constructor | Description |
| --- | --- |
| UxmlObjectReferenceAttribute | Declares that a field or property is associated with nested UXML objects. |
