using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RandomBall : MonoBehaviour {

	// Use this for initialization
	
    Rigidbody2D rb;
    public float speed;
	void Start () 
	{
        rb = GetComponent<Rigidbody2D>();
    }

	
}
