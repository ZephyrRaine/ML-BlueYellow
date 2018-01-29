using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MiceAcademy : Academy
{
    public float speed;
    public float bonusSize;
    public override void AcademyReset()
    {
        speed = (float)resetParameters["speed"];
        bonusSize = (float)resetParameters["bonus_size"];
    }

    public override void AcademyStep()
    {

    }
}