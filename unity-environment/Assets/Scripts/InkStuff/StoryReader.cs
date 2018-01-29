using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StoryReader : MonoBehaviour {

	[SerializeField]
	TextBox mainTextBox;

    [SerializeField]
    GameObject clickCatcher;

    // [SerializeField]
    // Fader fader;

    // [SerializeField]
    // bool introDone = false;


    void Start () 
    {
            ReadKnot("INTRO");
	}

    public void ReadKnot(string knot)
    {
        InkOverlord.IO.RequestKnot(knot);
        clickCatcher.SetActive(true);
        mainTextBox.transform.parent.gameObject.SetActive(true);
        Proceed();
    }

	
    public void Proceed()
    {
        
            if(mainTextBox._isReading)
            {
                mainTextBox.DisplayImmediate();
            }
            else if (InkOverlord.IO.canContinue)
            {
                mainTextBox.ReadLine(0f, 1f, InkOverlord.IO.NextLine());
            }
            else
            {
                CloseTextBox();
            }

    }
  


    void CloseTextBox()
    {
        Invoke("RemoveTrigger", 0.1f);
        mainTextBox.transform.parent.gameObject.SetActive(false);
    }

    void RemoveTrigger()
    {
        clickCatcher.SetActive(false);
    }

    void RemoveBackground()
    {
        clickCatcher.SetActive(false);
    }
    /*
    public InputField inputField;

    public void OpenInputField()
    {
        inputField.gameObject.SetActive(true);
        inputField.Select();
        inputField.ActivateInputField();
    }
*/
}
