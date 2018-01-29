using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BasicBonus : MonoBehaviour {

    Rigidbody2D rb;
    public float speed;
    void Start()
	{
        rb = GetComponent<Rigidbody2D>();
    }
    // Use this for initialization
    void OnCollisionEnter2D(Collision2D other)
    {
        if(other.collider.tag == "Player")
		{
            other.collider.GetComponent<MiceAgent>().BasicBonus();
        }
	}

	void FixedUpdate()
    {
        if(rb.velocity.magnitude < 5f)
			ImpulseToRandomDirection();
    }


    void ImpulseToRandomDirection()
	{
        rb.AddForce(new Vector2(Random.value*2f-1f, Random.value*2f-1f) * speed, ForceMode2D.Impulse);
	}
}
