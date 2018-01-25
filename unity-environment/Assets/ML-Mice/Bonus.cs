﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bonus : MonoBehaviour 
{
    Rigidbody2D rb;
    FleeAgent fa;
    public float speed;
    void Start()
	{
        fa = GetComponent<FleeAgent>();
        rb = GetComponent<Rigidbody2D>();
    }
    void OnCollisionEnter2D(Collision2D other)
    {
		if(other.collider.tag == "Player")
		{
            if(fa != null)
                fa.Loose();
            other.collider.GetComponent<MiceAgent>().GotBonus();
        }
	}

	void FixedUpdate()
	{
	//	if(rb.velocity.magnitude < 5f)
      //      ImpulseToRandomDirection();
    }


	
	void ImpulseToRandomDirection()
	{
        rb.AddForce(new Vector2(Random.value*2f-1f, Random.value*2f-1f) * speed, ForceMode2D.Impulse);
	}
}
