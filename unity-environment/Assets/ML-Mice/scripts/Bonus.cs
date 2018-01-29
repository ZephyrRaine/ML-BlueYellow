using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bonus : MonoBehaviour 
{
    Rigidbody2D rb;
    FleeAgent fa;
    public float speed;
    void Start()
	{
        fa = GetComponentInParent<FleeAgent>();
        rb = GetComponent<Rigidbody2D>();
    }
    void OnTriggerStay2D(Collider2D other)
    {
        if(other.tag == "Player")
		{
            // Debug.Log("OK3");
            if(fa != null)
                fa.Loose();
            other.GetComponent<MiceAgent>().GotBonus();
        }
	}

}
