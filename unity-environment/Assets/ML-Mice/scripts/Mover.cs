using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mover : MonoBehaviour {

    Rigidbody2D rb;
    public float speed;
    // Use this for initialization
    void Start () 
	{
        rb = GetComponent<Rigidbody2D>();
    }
	
	// Update is called once per frame
	void FixedUpdate () 
	{
        Vector2 vectorToMouse = (Vector2)Camera.main.ScreenToWorldPoint(Input.mousePosition) - rb.position;
        vectorToMouse.Normalize();
        rb.AddForce(vectorToMouse * speed);
    }
}
