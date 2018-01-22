using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceAgent : Agent 
{
    Rigidbody2D rb;
    public Rigidbody2D target;
    public MiceArea area;
    public float speed;

    public override void InitializeAgent()
	{
        rb = GetComponent<Rigidbody2D>();
    }
    public override List<float> CollectState()
    {
        List<float> state = new List<float>();
        state.Add(target.transform.position.x - rb.transform.position.x);
        state.Add(target.transform.position.y - rb.transform.position.y);
        state.Add(rb.velocity.x);
        state.Add(rb.velocity.y);
        state.Add(target.velocity.x);
        state.Add(target.velocity.y);
        state.Add(speed);

        return state;
	}

    public void MoveAgent(float[] act) {
        float directionX = 0;
        float directionY = 0;

        if (brain.brainParameters.actionSpaceType == StateType.continuous)
        {
            directionX = Mathf.Clamp(act[0], -1f, 1f);
            directionY = Mathf.Clamp(act[1], -1f, 1f);
        }
        Vector2 direction = new Vector2(directionX, directionY);
        direction.Normalize();
        rb.AddRelativeForce(direction * speed);
    }

	public override void AgentStep(float[] act)
	{
        MoveAgent(act);
        if(rb.velocity.magnitude < 1f)
            reward = -0.001f;
    }

	public void GotBonus()
	{
        reward = 1f;
        done = true;
    }

	public override void AgentReset()
	{
        area.ResetArea();
        rb.velocity = rb.velocity*0.5f;
	}

}
