using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceArea : MonoBehaviour {

	public Bonus bonus;
	public MiceAgent agent;
	public void ResetArea()
	{
		Vector2 ok = RandomPosition();
        bonus.transform.localPosition = ok;
		agent.transform.localPosition = ok*-1f;
    }

	public Vector2 RandomPosition()
	{
		
        return new Vector2(
            Random.Range(3f, 8f) * (Random.value > 0.5f ? 1f : -1f),
            Random.Range(3f, 8f) * (Random.value > 0.5f ? 1f : -1f));
	}

}
