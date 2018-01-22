using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bonus : MonoBehaviour 
{
    Rigidbody2D rb;
    public float speed;
    void Start()
	{
        rb = GetComponent<Rigidbody2D>();
    }
    void OnTriggerEnter2D(Collider2D other)
	{
		if(other.tag == "Player")
		{
            other.GetComponent<MiceAgent>().GotBonus();
        }
	}

	

	void FixedUpdate()
	{
		if(rb.velocity.magnitude < 5f)
            ImpulseToRandomDirection();
    }

	public void RandomPosition()
	{
        transform.localPosition = new Vector2(
            Random.Range(3f, 8f) * (Random.value > 0.5f ? 1f : -1f),
            Random.Range(3f, 8f) * (Random.value > 0.5f ? 1f : -1f));
	}

	
	void ImpulseToRandomDirection()
	{
        rb.AddForce(new Vector2(Random.value, Random.value) * speed, ForceMode2D.Impulse);
	}
}
