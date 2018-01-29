using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StepInfo
{
    public int step;
    public float reward;
}

public class StepsParser : MonoBehaviour 
{
    public TextAsset rewardJson;
    // Use this for initialization
    void Start () 
	{
        StepInfo[] steps = CSVReader.GetStepInfos(rewardJson.text);
        for (int i = 0; i < steps.Length; i++)
		{
            Debug.Log("Step : " + steps[i].step + " - Value : " + steps[i].reward);
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
