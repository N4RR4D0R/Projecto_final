using Godot;
using Godot.Collections;
using System;

public class Inventory : Godot.Object
{
    const int maxItems=10;

    private Array<Godot.Object> items=new Array<Godot.Object>();

    public Inventory():base(){}

    public void setItem(Godot.Object item){
        if(items.Count<maxItems && item.GetMeta("type")=="item"){
            items.Add(item);
        }
    }

    public void useItem(int index,Player target){
        
        items[index].Call("use",target);
    }
}
