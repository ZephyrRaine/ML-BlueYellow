using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FleeAgent : MiceAgent {

	public override void AgentStep(float[] act)
	{
        MoveAgent(act);
        reward = 0.001f;
    }

	public void Loose()
	{
        reward = -0.1f;
    }


    public override void AgentReset()
    {
        GetComponent<Rigidbody2D>().velocity = Vector3.zero;
    }
}
