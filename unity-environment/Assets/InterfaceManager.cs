using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InterfaceManager : MonoBehaviour {

	// Use this for initialization
	public void SetTimeScale(float ratio)
	{
        Time.timeScale = ratio;
    }
}
