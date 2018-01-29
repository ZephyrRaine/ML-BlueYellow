using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HotReloading : MonoBehaviour 
{
    Brain[] brains;
    public TextAsset[] checkpoints;
    // Use this for initialization
    void Start () 
	{
        brains = GameObject.FindObjectsOfType<Brain>();
    }
	
	public void HotLoad(int checkpointIndex)
	{
		foreach(Brain b in brains)
		{
            (b.coreBrain as CoreBrainInternal).graphModel = checkpoints[checkpointIndex];
            b.InitializeBrain();
        }
        GetComponent<Academy>().Reset();
    }
}
