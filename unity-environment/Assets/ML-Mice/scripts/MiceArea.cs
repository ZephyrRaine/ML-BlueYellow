using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceArea : MLarea {

    public MiceAgent mice;
    public FleeAgent flee;
    public override void ResetArea()
	{
		
        mice.transform.localPosition = new Vector2(
            Random.Range(3f, 8f) * (Random.value > 0.5f ? 1f : -1f),
			Random.Range(3f, 8f) * (Random.value > 0.5f ? 1f : -1f));
        flee.transform.localPosition = mice.transform.localPosition * -1f;


        GetComponentInChildren<PaintBrush>().Clear();
    }

    void Update()
    {

    }
}
