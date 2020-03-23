using Godot;
using Godot.Collections;
using System;

public class Player : Node2D
{
    public Inventory inventory=new Inventory();

    private Array<Godot.Object> abilities;

    private Polygon2D body,RightArm,LeftArm;
    public override void _Ready()
    {   
        body=GetNode<Polygon2D>("Body");
        RightArm=GetNode<Polygon2D>("Right arm");
        LeftArm=GetNode<Polygon2D>("Left arm");
        setStats();
        this.SetMeta("type","player");
    }

    private void setStats(){
        this.SetMeta("vida",100.0f);
        this.SetMeta("velocidad",2.0f);
        this.SetMeta("danyo",10.0f);
        this.SetMeta("armadura",1.0f);
        this.SetMeta("iniciativa",2.0f);

        this.SetMeta("vida_t",0.0f);
        this.SetMeta("danyo_t",0.0f);
        this.SetMeta("iniciativa_t",0.0f);
      
        this.SetMeta("stun",0.0f);
        this.SetMeta("paralisis",0.0f);
        this.SetMeta("veneno",0.0f);
        this.SetMeta("encendido",0.0f);
        //No esta bien
        this.SetMeta("target",-1.0f);
        this.SetMeta("target_duration",0.0f);
    }

    public void setColor(Color color){
        body.Color=color;
        RightArm.Color=color;
        LeftArm.Color=color;
    }
}
