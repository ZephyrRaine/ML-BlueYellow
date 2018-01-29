using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PaintBrush : MonoBehaviour
{
    public int resolution = 512;
    Texture2D whiteMap;
    public float brushSize;
    public Texture2D inputTexture;

    Texture2D[] brushs;
    RenderTexture texture;
    Vector2 stored = Vector3.zero;
    Material material;
    public Transform[] transforms;

    public Vector2?[] lastPos;
    Color[] colors;

    Texture2D transparentLayer;

    public void Clear()
    {
        
        RenderTexture.active = texture; // activate rendertexture for drawtexture;
        GL.PushMatrix();                       // save matrixes
        GL.LoadPixelMatrix(0, resolution, resolution, 0);      // setup matrix for correct size
        // draw brushtexture
        Graphics.DrawTexture(new Rect(0, 0, texture.width, texture.height), whiteMap);
        GL.PopMatrix();
        RenderTexture.active = null;// turn off rendertexture

        for (int i = 0; i < lastPos.Length; i++)
        {
            lastPos[i] = null;
        }
    }    

    void Start()
    {
        whiteMap = CreateColorTexture(Color.white);
        transparentLayer = CreateColorTexture(new Color(1f, 1f, 1f, 0.01f));
        // brushTexture = ColorExistingTexture(brushTexture, Color.red);
        brushs = new Texture2D[transforms.Length];
        lastPos = new Vector2?[transforms.Length];
        colors = new Color[transforms.Length];
        for (int i = 0; i < brushs.Length; i++)
        {
            colors[i] = transforms[i].GetComponent<SpriteRenderer>().color;
            brushs[i] = ColorExistingTexture(inputTexture, colors[i]);
        }
        texture = getWhiteRT();
        texture.isPowerOfTwo = true;
        material = GetComponent<MeshRenderer>().material;
        material.SetTexture("_MainTex", texture);
    }

    private Texture2D ColorExistingTexture(Texture2D _texture, Color _color)
    {
        Color32[] c = _texture.GetPixels32();
        
        Texture2D tex = new Texture2D(_texture.width, _texture.height, TextureFormat.ARGB32, false);
        // tex.alphaIsTransparency = true;
        for (int i = 0; i < c.Length; i++)
        {
            Color32 pixel = c[i];
            Color32 newPixel = _color * pixel;
            c[i] = newPixel;
        }
        tex.SetPixels32(c);
        tex.Apply();
        return tex;
    }

    void Update()
    {
        Opacity();
        for(int i = 0; i < transforms.Length; i++)
        {
            Transform tr = transforms[i];
            RaycastHit hit;
            Debug.DrawRay(tr.position, Vector3.forward, Color.red, 2f);
            if (Physics.Raycast(tr.position, Vector3.forward, out hit))
            {
                if (stored != hit.textureCoord) // stop drawing on the same point
                {
                    Vector2 pixelUV = hit.textureCoord;
                    pixelUV.y *= resolution;
                    pixelUV.x *= resolution;
                    if(lastPos[i] == null)
                        lastPos[i] = pixelUV;
                    Vector2 saveVector = lastPos[i].Value - pixelUV;
                    saveVector.Normalize();
                    float stepSize = brushs[i].width / (brushSize);
                    for (float dis = 0f; dis < Vector2.Distance(lastPos[i].Value, pixelUV); dis+=stepSize)
                    {
                        Vector2 pix = pixelUV + saveVector * dis;
                        DrawTexture(texture, brushs[i], pix.x, pix.y);
                    }
                    stored = hit.textureCoord;
                    lastPos[i] = pixelUV;
                }
            }
        }
    }

    void Opacity()
    {
        RenderTexture.active = texture; // activate rendertexture for drawtexture;
        GL.PushMatrix();                       // save matrixes
        GL.LoadPixelMatrix(0, resolution, resolution, 0);      // setup matrix for correct size
        // draw brushtexture
        Graphics.DrawTexture(new Rect(0, 0, texture.width, texture.height), transparentLayer);
        GL.PopMatrix();
        RenderTexture.active = null;// turn off rendertexture
    }

    void DrawTexture(RenderTexture rt, Texture2D brushTexture, float posX, float posY)
    {
        RenderTexture.active = rt; // activate rendertexture for drawtexture;
        GL.PushMatrix();                       // save matrixes
        GL.LoadPixelMatrix(0, resolution, resolution, 0);      // setup matrix for correct size
        // draw brushtextureR
        Graphics.DrawTexture(new Rect(posX - brushTexture.width / brushSize, (rt.height - posY) - brushTexture.height / brushSize, brushTexture.width / (brushSize * 0.5f), brushTexture.height / (brushSize * 0.5f)), brushTexture);
        GL.PopMatrix();
        RenderTexture.active = null;// turn off rendertexture
    }

    RenderTexture getWhiteRT()
    {
        RenderTexture rt = new RenderTexture(resolution, resolution, 32);
        Graphics.Blit(whiteMap, rt);
        return rt;
    }

    Texture2D CreateColorTexture(Color c)
    {
        Texture2D tex = new Texture2D(1, 1);
        tex.SetPixel(0, 0, c);
        tex.Apply();

        return tex;
    }
}