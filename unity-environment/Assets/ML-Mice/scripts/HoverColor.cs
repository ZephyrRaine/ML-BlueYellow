using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HoverColor : MonoBehaviour {

	Color startColor;
	SpriteRenderer sr;
	// Use this for initialization
	void Start () 
	{
		sr = GetComponent<SpriteRenderer>();
		startColor = sr.color;
	}

	public void Hover(bool b)
	{
		sr.color = b?startColor*1.25f:startColor;
	}
	
}
