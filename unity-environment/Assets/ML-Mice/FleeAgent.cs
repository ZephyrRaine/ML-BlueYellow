﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FleeAgent : MiceAgent {

	public override void AgentStep(float[] act)
	{
        MoveAgent(act);
        if(rb.velocity.magnitude < 1f)
            reward = -0.001f;
		else
            reward = 0.001f;
    }

	public void Loose()
	{
        reward = -1f;
        done = true;
    }


    public override void AgentReset()
    {

    }
}
