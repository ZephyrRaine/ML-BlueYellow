using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FleeAgent : MiceAgent 
{
    public override void StepReward()
    { 
        reward = 0.0001f;
    }


	public void Loose()
	{
        reward = -1f;
        done = true;
    }


    public override void AgentReset()
    {
        GetComponent<Rigidbody2D>().velocity = Vector3.zero;
    }
}
