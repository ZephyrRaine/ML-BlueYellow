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

    public TextMeshBox.SimpleCallback finished;
    AudioSource source;
    public AudioClip[] voices;
    void Start () 
    {
            ReadKnot("INTRO");
            source = GetComponent<AudioSource>();
        mainTextBox.finishedCallback += finishedLine;
    }

    public void finishedLine()
    {
        if(finished != null)
            finished();
    }

    public void ReadKnot(string knot)
    {
        mainTextBox.Clear();
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
                RemoveTrigger();
                // Invoke("RemoveTrigger", 0.1f);
                //CloseTextBox();
            }

    }

    float timer = 0f;
    public float sfxDelay = 0.1f;
    void Update()
    {
        if(mainTextBox._isReading)
        {
            timer += Time.unscaledDeltaTime;
            if(timer > sfxDelay)
            {
                timer = 0f;
                if(voices.Length > 0)
                        source.PlayOneShot(voices[UnityEngine.Random.Range(0, voices.Length)],0.1f);
            }
        }
        else
        {
            timer = 0f;
        }
    }
  


    public void CloseTextBox()
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
