using Godot;
using Godot.Collections;
using System;

public class Player : Node2D
{
    public Stats stats = new Stats();

    public Inventory inventory=new Inventory();

    private Array<Godot.Object> abilities;

    private Polygon2D body;

    private Polygon2D RightArm;

    private Polygon2D LeftArm;
    public override void _Ready()
    {   
        body=GetNode<Polygon2D>("Body");
        RightArm=GetNode<Polygon2D>("Right arm");
        LeftArm=GetNode<Polygon2D>("Left arm");
    }

    public void setColor(Color color){
        body.Color=color;
        RightArm.Color=color;
        LeftArm.Color=color;
    }
}
