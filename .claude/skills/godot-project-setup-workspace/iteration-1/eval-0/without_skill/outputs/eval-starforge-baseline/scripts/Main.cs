using Godot;

public partial class Main : Node
{
    public override void _Ready()
    {
        GD.Print("StarForge online: C# is running!");
    }

    public override void _Process(double delta)
    {
        // per-frame logic; delta is seconds since last frame
    }
}
