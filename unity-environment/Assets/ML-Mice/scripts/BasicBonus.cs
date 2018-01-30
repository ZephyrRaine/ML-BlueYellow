using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BasicBonus : MonoBehaviour {

    Rigidbody2D rb;
    public float speed;

    public Rigidbody2D agent;
    AudioSource source;

    public System.Action Done;
    void Start()
	{
        source = GetComponent<AudioSource>();
        rb = GetComponent<Rigidbody2D>();
    }
    // Use this for initialization

    void OnCollisionEnter2D(Collision2D other)
    {
        if(other.collider.tag == "Player")
		{
            other.collider.GetComponent<MiceAgent>().BasicBonus();
            if(source != null)
                source.Play();
            if(Done != null)
                Done();
        }
	}

	void FixedUpdate()
    {
        // if(rb.velocity.magnitude < 5f)
			// ImpulseToRandomDirection();
        Vector2 targetOffset = transform.position - agent.transform.position;

        Vector2 m_desiredFleeVelocity = targetOffset;
	    m_desiredFleeVelocity.Normalize();
	    

        float fT = Mathf.Min(3f, targetOffset.magnitude);
        Vector2 prediction = (Vector2)agent.transform.position + (Vector2)agent.velocity * fT;
        Vector2 m_desiredVelocity = (Vector2)transform.position - prediction;
        m_desiredVelocity.Normalize();


        float dist = Vector2.Distance((Vector2)agent.transform.position, (Vector2)transform.position);
        if(dist > 5.0f)
        {
            m_desiredVelocity *= 0.75f;
            m_desiredFleeVelocity *= 0.25f;
        }
        else
        {
            m_desiredVelocity *= 0.0f;
            m_desiredFleeVelocity *= 1.0f;
        }

        rb.AddForce((m_desiredVelocity+m_desiredFleeVelocity)*speed);
    }


    void ImpulseToRandomDirection()
	{
        rb.AddForce(new Vector2(Random.value*2f-1f, Random.value*2f-1f) * speed, ForceMode2D.Impulse);
	}
}
