using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
public class Deselect : MonoBehaviour 
{
    EventSystem system;
    void Start()
	{
        system = GetComponent<EventSystem>();
    }
	// Update is called once per frame
	void Update () 
	{
		if(Input.GetAxis("Cancel") > 0f)
		{
            system.SetSelectedGameObject(null);
        }	
	}
}
