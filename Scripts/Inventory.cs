using Godot;
using Godot.Collections;
using System;

public class Inventory : Godot.Object
{
    const int maxItems=10;
    private Array<Item> items= new Array<Item>();

    public Inventory():base(){}

    public void setItem(Item item){
        if(items.Count<maxItems){
            items.Add(item);
        }
    }

    public void useItem(int index,Player target){
        items[index].use(target);
    }
}
