using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tutorial : MonoBehaviour {

    StoryReader story;
    MiceAgent agent;
    BasicBonus bonus;
    void Start () 
	{
        agent = FindObjectOfType<MiceAgent>();
        story = GetComponent<StoryReader>();
        story.finished += FinishedStory;
        bonus = FindObjectOfType<BasicBonus>();
		bonus.Done += Proceed;
    }

	void FinishedStory()
	{
        Debug.Log("ok");
        switch(step)
		{
			case 1:
        		agent.TakeControl(false);
                agent.canMove = true;
                break;
			case 2:
                agent.canMove = true;
                bonus.speed = 175f;
                break;
            default:
                break;
        }
    }
    int step = 0;
    int count = 0;
    void Proceed()
	{
		if(step == 0)
		{
            count++;
			if(count == 5)
			{
				story.ReadKnot("STEP"+step);
				step++;
                count = 0;
                agent.canMove = false;
            }
		}
		else
		{
			count++;
			if(count == 5)
			{
                story.ReadKnot("STEP" + step);
                step++;
                agent.canMove = false;
            }
		}

    }
	
}
