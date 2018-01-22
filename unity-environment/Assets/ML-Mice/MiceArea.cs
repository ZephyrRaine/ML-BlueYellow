using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceArea : MonoBehaviour {

	public Bonus bonus;
	public void ResetArea()
	{
        bonus.RandomPosition();
    }
}
