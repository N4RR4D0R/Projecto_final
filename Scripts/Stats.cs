using Godot;
using Godot.Collections;
using System;

public class Stats : Godot.Object
{
    public Dictionary<String,float> stack;
    public Stats():base()
    {
        stack.Add("vida",100.0f);
        stack.Add("velocidad",2.0f);
        stack.Add("danyo",10.0f);
        stack.Add("armadura",1.0f);
        stack.Add("iniciativa",2.0f);

        stack.Add("vida_t",0.0f);
        stack.Add("danyo_t",0.0f);
        stack.Add("iniciativa_t",0.0f);
      
        stack.Add("stun",0.0f);
        stack.Add("paralisis",0.0f);
        stack.Add("veneno",0.0f);
        stack.Add("encendido",0.0f);
        //No esta bien
        stack.Add("target",-1.0f);
        stack.Add("target_duration",0.0f);
    }
    public void plusVida(float plus){
      stack["vida"]+=plus;
      if(stack["vida"]>100.0f){
         stack["vida"]=100.0f;
      }else if(stack["vida"]<0.0f){
          stack["vida"]=0.0f;
      }
    }
}
