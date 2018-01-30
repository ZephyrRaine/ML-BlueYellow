using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceAgent : Agent 
{
    protected Rigidbody2D rb;
    public Rigidbody2D target;
    public MLarea area;
    public float speed;

    public override void InitializeAgent()
	{
        rb = GetComponent<Rigidbody2D>();
    }
    public override List<float> CollectState()
    {
        // List<float> state = new List<float>();
        state.Add(target.transform.localPosition.x - transform.localPosition.x);
        state.Add(target.transform.localPosition.y - transform.localPosition.y);
        state.Add(rb.velocity.x);
        state.Add(rb.velocity.y);
        if(area.GiveVelocity)
        {
            state.Add(target.velocity.x);
            state.Add(target.velocity.y);
        }
        else
        {
            state.Add(0f);
            state.Add(0f);
        }
        return state;
	}
    Vector2 direction;
    bool isAiControlled = true;
    public void MoveAgent(float[] act) 
    {
        float directionX = 0;
        float directionY = 0;

        if (brain.brainParameters.actionSpaceType == StateType.continuous)
        {
            directionX = Mathf.Clamp(act[0], -1f, 1f);
            directionY = Mathf.Clamp(act[1], -1f, 1f);
        }
        direction = new Vector2(directionX, directionY);
        direction.Normalize();
        rb.AddRelativeForce(direction * speed);
    }


    public bool canMove = true;
    public void TakeControl(bool b)
    {
        isAiControlled = !b;
    }

	public override void AgentStep(float[] act)
	{
        if(!isAiControlled)
        {
            act[0] = Input.GetAxis("Horizontal");
            act[1] = Input.GetAxis("Vertical");
            MoveAgent(act);
        }
        else if(canMove)
        {
            MoveAgent(act);
        }
        
        reward = -0.0001f;
    }

	public void GotBonus()
	{
        reward = 0.01f;
        if(CumulativeReward >= 1f)
            done = true;
    }

    public void BasicBonus()
    {
        reward = 1f;
        done = true;
    }


	public override void AgentReset()
	{
        rb.velocity = Vector3.zero;
        area.ResetArea();
    }

}
