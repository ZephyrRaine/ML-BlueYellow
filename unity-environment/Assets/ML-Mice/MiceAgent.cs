using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceAgent : Agent 
{
    protected Rigidbody2D rb;
    public Rigidbody2D target;
    public MiceArea area;
    public float speed;

    public override void InitializeAgent()
	{
        rb = GetComponent<Rigidbody2D>();
    }
    public override List<float> CollectState()
    {
        // List<float> state = new List<float>();
        state.Add(target.transform.localPosition.x);
        state.Add(transform.localPosition.x);
        state.Add(target.transform.localPosition.y);
        state.Add(transform.localPosition.y);
        state.Add(rb.velocity.x);
        state.Add(rb.velocity.y);
        state.Add(target.velocity.x);
        state.Add(target.velocity.y);

        return state;
	}
      Vector2 direction;
    public void MoveAgent(float[] act) {
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
        transform.GetChild(0).rotation.SetLookRotation(transform.position + new Vector3(direction.x, direction.y), Vector3.up);
    }

	public override void AgentStep(float[] act)
	{
        MoveAgent(act);
        reward = -0.001f;
    }

	public void GotBonus()
	{
        reward = 1f;
        done = true;
    }

    void OnDrawGizmos()
    {
        Gizmos.DrawSphere(transform.position + new Vector3(direction.x, direction.y), 1);
    }

	public override void AgentReset()
	{
        rb.velocity = Vector3.zero;
        area.ResetArea();
    }

}
