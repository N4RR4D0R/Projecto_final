using Godot;
using System;

public class Item : Node
{
    private int uses;
    public Item(int _uses):base(){
        this.uses=_uses;
    }
    public override void _Ready()
    {
        
    }

    public int getUses(){
        return uses;
    }

    public virtual void castTo(Player target){}

    public void use(Player target){
        if(uses != 0){
            this.castTo(target);
            if(uses>0){
                uses--;
            }
        }
    }
}
